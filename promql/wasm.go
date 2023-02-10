package promql

// run me via
// $ go run main.go

import (
	"encoding/binary"
	"fmt"
	"io/ioutil"
	"math"
	"path"
	"strings"

	"github.com/bytecodealliance/wasmtime-go"
)

var wasmEngine *wasmtime.Engine
var wasmStore *wasmtime.Store
var wasmInstances = map[string]*wasmtime.Instance{}
var wasmInstancesNameSorted = []string{}
var wasmInstancesScalarArgsCount = map[string]int{}

const debug = false

type WasmInputType int32

const (
	invalidWasmInputType WasmInputType = 0
	vectorWasmInputType  WasmInputType = 1
	matrixWasmInputType  WasmInputType = 2
)

var wasmInstancesInputType = map[string]WasmInputType{}

var wasmLibPath = "test/lib"

func EnsureWasmSetup() error {
	fmt.Println("Loading wasm instances ...")

	wasmEngine = wasmtime.NewEngine()
	wasmStore = wasmtime.NewStore(wasmEngine)

	files, err := ioutil.ReadDir(wasmLibPath)
	if err != nil {
		return err
	}

	for _, file := range files {
		if !file.IsDir() {
			name := strings.TrimSuffix(file.Name(), ".wat")
			filePath := path.Join(wasmLibPath, file.Name())

			err = loadWasmModuleFromFilePath(name, filePath)
			if err != nil {
				return err
			}
		}
	}

	fmt.Println("Wasm instances loaded!")

	return nil
}

func loadWasmModuleFromFilePath(name string, filePath string) (err error) {
	fmt.Printf("Loading wasm %s\n", name)

	module, err := wasmtime.NewModuleFromFile(wasmEngine, filePath)
	if err != nil {
		return
	}

	instance, err := wasmtime.NewInstance(wasmStore, module, []wasmtime.AsExtern{})
	if err != nil {
		return
	}

	wasmInstances[name] = instance
	n := len(wasmInstancesNameSorted)
	wasmInstancesNameSorted = append(wasmInstancesNameSorted, name)

	inputType, err := wasmCallWithError(name, "input_type")
	wasmInstancesInputType[name] = WasmInputType(inputType.(int32))
	if err != nil {
		return
	}

	if wasmInstancesInputType[name] == matrixWasmInputType {
		scalarArgsCount, err := wasmCallWithError(name, "scalar_args_count")
		if err != nil {
			return err
		}
		wasmInstancesScalarArgsCount[name] = int(scalarArgsCount.(int32))
	}

	fmt.Printf("Wasm instance %s (n=%d) uses type %d, (scalar args = %d)\n",
		name, n, wasmInstancesInputType[name], wasmInstancesScalarArgsCount[name])

	if inputType == 0 {
		return fmt.Errorf("wasm Instance: Input type should not be 0 (invalid). Name: " + name)
	}

	fmt.Printf("Loaded wasm instance %s\n", name)

	return
}

// Plumbing

func wasmCallWithError(instanceName string, funcName string, args ...interface{}) (interface{}, error) {
	return wasmInstances[instanceName].GetFunc(wasmStore, funcName).Call(wasmStore, args...)
}

// same as above, but panics instead
func wasmCall(instanceName string, funcName string, args ...interface{}) interface{} {
	res, err := wasmCallWithError(instanceName, funcName, args...)
	if err != nil {
		panic(err)
	}
	return res
}

// Main

// exactly one of inVec and inMat is provided. the other is nil.
// todo. use generics to make this better refactored
func RunWasmFunctionInPromQL(wasmName string, inVec Vector, inMat Matrix, scalarArgs []float64) Vector {
	if debug {
		fmt.Printf("Preparing wasm function %s\n", wasmName)
		if inVec != nil {
			fmt.Printf("Input vector length %d\n", len(inVec))
		} else {
			fmt.Printf("Input matrix %d x %d\n", len(inMat), inMat.TotalSamples()/len(inMat))
		}
	}

	wasmInstance := wasmInstances[wasmName]
	if debug {
		fmt.Printf("Instance ready: %s\n", wasmInstance)
	}

	userType := wasmCall(wasmName, "user_level_type").(int32)
	if debug {
		fmt.Printf("Got user-level-type: %d\n", userType)
	}
	if userType != 10 {
		panic("Only user user-level-type 10 = f64 supported!")
	}
	var typeSize int32 = 8 // bytes

	if inVec != nil && wasmInstancesInputType[wasmName] != vectorWasmInputType {
		panic("Input type vector does not correspond to wasm input type " + string(wasmInstancesInputType[wasmName]))
	} else if inMat != nil && wasmInstancesInputType[wasmName] != matrixWasmInputType {
		panic("Input type matrix does not correspond to wasm input type " + string(wasmInstancesInputType[wasmName]))
	}

	if inMat != nil && wasmInstancesScalarArgsCount[wasmName] > len(scalarArgs) {
		panic("Wasm function requires at least " +
			string(wasmInstancesScalarArgsCount[wasmName]) +
			" scalar args, but only " +
			string(len(scalarArgs)) +
			" were provided.")
	}

	if debug {
		fmt.Printf("Setting array length to match input vector/matrix length/dimensions\n")
	}

	// resize wasm memory to be able to hold array/matrix
	var length int
	var total int
	var DIM_0 int
	var DIM_1 int
	if inVec != nil { // array
		wasmCall(wasmName, "resize", len(inVec))
		length = int(wasmCall(wasmName, "length").(int32))
		if length != len(inVec) {
			panic("resize didn't work")
		}
	} else { // matrix
		total = inMat.TotalSamples()
		DIM_0 = inMat.Len()
		DIM_1 = total / DIM_0
		if debug {
			fmt.Printf("Dimensions: %d x %d = %d\n", DIM_0, DIM_1, total)
		}
		if DIM_0*DIM_1 != total {
			panic("Dimensions doesn't match properly.")
		}
		wasmCall(wasmName, "set_dimensions", DIM_0, DIM_1)
		length = int(wasmCall(wasmName, "length").(int32))
		if length != total {
			panic("resize didn't work")
		}
	}

	if debug {
		fmt.Printf("Setting scalar args: %v\n", scalarArgs)
	}
	for i, arg := range scalarArgs {
		wasmCall(wasmName, "set_scalar_arg", i, arg)
	}

	if debug {
		fmt.Println("Accessing wasm memory from host-side")
	}
	rawMemory := wasmInstance.GetExport(wasmStore, "memory").Memory().UnsafeData(wasmStore)
	ptr := wasmCall(wasmName, "get_wasm_memory_buffer_ptr").(int32)

	// Processing input
	// Point.T is timestamp int64
	// Point.V is value float64
	if inVec != nil && inVec[0].Point.H != nil { // see docs of Point
		panic("Histograms not supported yet")
	}

	// ====================================================
	/*
		We need to manually take care of proper serialisation and deserialisation of the bytes on go and wasm side.
		The only thing properly standardised is, that the linear memory consists of little-endian contigous bytes.
		When the user wants to work with actual types such as int32, u32, and f64, we need to ensure, that
		the same (de-)serialisation is used on go and wasm side, so that the user only needs to provide their core
		computation.
		This is why we use the 'user-level-type'. It is e.g. i32 and the actual user function only cares about that.
	*/
	// ====================================================

	printBufferAsUserTypedArray := func() {
		for i := 0; i < length; i++ {
			// WE NEED TO TAKE CARE. 4xBYTE = 1x INT32
			// Little-Endian, because wasm spec.
			ia := ptr + int32(i)*typeSize
			iz := ptr + int32(i)*typeSize + typeSize
			slc := rawMemory[ia:iz]

			// x := int64(binary.LittleEndian.Uint64(slc)) // int32 conversion can be omitted when using u32
			x := Float64fromBytes(slc)

			idxStr := ""
			if inVec != nil {
				idxStr = fmt.Sprintf("[%d]", i)
			} else {
				m := i / DIM_1 // 2d-array logic
				t := i % DIM_1
				idxStr = fmt.Sprintf("[%d][%d]", m, t)
			}

			fmt.Printf("%s = [%d] = %f from %v | %d to %d\n", idxStr, i, x, slc, ia, iz)
		}
		fmt.Println("")
	}

	if debug {
		printBufferAsUserTypedArray()
	}

	if debug {
		fmt.Println("Copy data to wasm memory.")
	}
	for i := 0; i < length; i++ {

		x := 0.0
		// import happens here
		if inVec != nil {
			x = inVec[i].Point.V
		} else {
			m := i / DIM_1 // 2d-array logic
			t := i % DIM_1
			x = inMat[m].Points[t].V
		}

		// WE NEED TO TAKE CARE. 4xBYTE = 1x INT32
		ia := ptr + int32(i)*typeSize
		iz := ptr + int32(i)*typeSize + typeSize
		slc := rawMemory[ia:iz]

		copy(slc, Float64ToBytes(x))
		// binary.LittleEndian.PutUint64(slc, uint64(x))
	}

	// apply work
	if debug {
		printBufferAsUserTypedArray()
		fmt.Println("Apply work.")
	}
	wasmCall(wasmName, "apply")

	if debug {
		fmt.Println("Results:")
		printBufferAsUserTypedArray()
	}

	// modify input vector inVec to return it back. I hope this is okay...!
	outVec := []Sample{}
	for i := 0; i < length; i++ {
		ia := ptr + int32(i)*typeSize
		iz := ptr + int32(i)*typeSize + typeSize
		slc := rawMemory[ia:iz]

		x := Float64fromBytes(slc)
		// x := int64(binary.LittleEndian.Uint64(slc)) // int32 conversion can be omitted when using u32

		if inVec != nil {
			inVec[i].Point.V = x
		} else {
			// inMat[m].Points[t].V = x
			m := i / DIM_1
			t := i % DIM_1
			// currently, we only support aggregation into an array. Result is assumed to be in each sub-arrays last element.
			if t == DIM_1-1 {
				if m == 0 {
					outVec = []Sample{} // initialize
				}
				series := inMat[m]
				pt := series.Points[t]
				pt.V = x
				sample := Sample{
					Metric: series.Metric,
					Point:  pt,
				}
				outVec = append(outVec, sample)
			}
		}
	}

	if inVec != nil {
		return inVec
	} else {
		return outVec
	}
}

// Plumbing for encoding/decoding

func Float64fromBytes(bytes []byte) float64 {
	bits := binary.LittleEndian.Uint64(bytes) // WASM uses little-endian
	return math.Float64frombits(bits)
}

func Float64ToBytes(float float64) []byte {
	bits := math.Float64bits(float)
	bytes := make([]byte, 8)
	binary.LittleEndian.PutUint64(bytes, bits) // WASM uses little-endian
	return bytes
}
