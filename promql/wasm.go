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

const debug = false

type WasmInputType int32

const (
	invalid WasmInputType = 0
	vector  WasmInputType = 1
	matrix  WasmInputType = 2
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
	module, err := wasmtime.NewModuleFromFile(wasmEngine, filePath)
	if err != nil {
		return
	}

	instance, err := wasmtime.NewInstance(wasmStore, module, []wasmtime.AsExtern{})
	if err != nil {
		return
	}

	wasmInstances[name] = instance

	inputType, err := wasmCallWithError(name, "input_type")
	wasmInstancesInputType[name] = WasmInputType(inputType.(int32))
	if err != nil {
		return
	}

	fmt.Printf("Wasm instance %s uses type %d\n", name, wasmInstancesInputType[name])

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

func RunWasmFunctionInPromQL(wasmName string, inVec Vector) Vector {
	if debug {
		fmt.Printf("Input vector: %s of length %d\n", len(inVec))
	}

	wasmInstance := wasmInstances[wasmName]
	if debug {
		fmt.Printf("Instance ready: %s\n", wasmInstance)
	}

	userType := wasmCall(wasmName, "user_level_type").(int32)
	if userType != 10 {
		panic("User user-level-type 8 = f64 supported atm!")
	}
	var typeSize int32 = 8

	if debug {
		fmt.Printf("Setting array length to match input vector length %d\n", len(inVec))
	}

	wasmCall(wasmName, "resize", len(inVec))
	length := int(wasmCall(wasmName, "length").(int32))
	if length != len(inVec) {
		panic(fmt.Errorf("Resize didn't work!"))
	}

	if debug {
		fmt.Println("Accessing wasm memory from host-side")
	}
	rawMemory := wasmInstance.GetExport(wasmStore, "memory").Memory().UnsafeData(wasmStore)
	ptr := wasmCall(wasmName, "get_wasm_memory_buffer_ptr").(int32)

	// Processing input
	// Point.T is timestamp int64
	// Point.V is value float64
	if inVec[0].Point.H != nil { // se docs of Point
		panic("Historgrams not supported yet")
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

			fmt.Printf("%d = %s from %v | %d to %d\n", i, x, slc, ia, iz)
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
		// vv import happens here vv
		// int32/uint32 conversions can be omitted when using u32
		// x := int64(inVec[i].Point.V)
		x := inVec[i].Point.V

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
	for i := 0; i < length; i++ {
		ia := ptr + int32(i)*typeSize
		iz := ptr + int32(i)*typeSize + typeSize
		slc := rawMemory[ia:iz]

		x := Float64fromBytes(slc)
		// x := int64(binary.LittleEndian.Uint64(slc)) // int32 conversion can be omitted when using u32

		inVec[i].Point.V = float64(x)
	}

	return inVec
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
