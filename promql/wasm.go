package promql

// run me via
// $ go run main.go

import (
	"encoding/binary"
	"fmt"

	"github.com/bytecodealliance/wasmtime-go"
)

var wasmEngine *wasmtime.Engine
var wasmStore *wasmtime.Store
var wasmInstances = map[string]*wasmtime.Instance{}

func EnsureWasmSetup() error {
	fmt.Println("Loading wasm...")
	wasmEngine = wasmtime.NewEngine()
	wasmStore = wasmtime.NewStore(wasmEngine)

	// todo. read all wasm files during startup here and load them into the map
	module, err := wasmtime.NewModuleFromFile(wasmEngine, "test/gcd.wat")
	if err != nil {
		return err
	}
	instance, err := wasmtime.NewInstance(wasmStore, module, []wasmtime.AsExtern{})
	if err != nil {
		return err
	}

	wasmInstances["gcd"] = instance

	// todo. read all wasm files during startup here and load them into the map
	module, err = wasmtime.NewModuleFromFile(wasmEngine, "test/array/array.wat")
	if err != nil {
		return err
	}
	instance, err = wasmtime.NewInstance(wasmStore, module, []wasmtime.AsExtern{})
	if err != nil {
		return err
	}

	wasmInstances["array"] = instance

	fmt.Println("Wasm instances loaded!")

	return nil
}

func wasmCall(instanceName string, funcName string, args ...interface{}) interface{} {
	res, err := wasmInstances[instanceName].GetFunc(wasmStore, funcName).Call(wasmStore, args...)
	if err != nil {
		panic(err)
	}
	return res
}

func RunWasmFunctionInPromQL(wasmName string, inVec Vector) Vector {
	fmt.Printf("vector: %s of length %d\n", len(inVec))

	wasmInstance := wasmInstances[wasmName]
	fmt.Printf("Instance ready: %s\n", wasmInstance)

	fmt.Println("Accessing wasm memory from host-side")
	rawMemory := wasmInstance.GetExport(wasmStore, "memory").Memory().UnsafeData(wasmStore)

	ptr := wasmCall(wasmName, "get_wasm_memory_buffer_ptr").(int32)
	fmt.Printf("ptr: %d\n", ptr)

	userType := wasmCall(wasmName, "user_level_type").(int32)
	if userType != 8 {
		panic("User user-level-type 8 = i64 supported atm!")
	}
	var typeSize int32 = 8

	length := int(wasmCall(wasmName, "length").(int32))
	fmt.Printf("length: %d\n", length)

	if length != len(inVec) {
		panic(fmt.Errorf("Cannot deal with unequal arrray sizes yet"))
	}

	if inVec[0].Point.H != nil { // se docs of Point
		panic("Historgrams not supported yet")
	}
	// Point.T is timestamp int64
	// Point.V is value float64

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
			x := int64(binary.LittleEndian.Uint64(slc)) // int32 conversion can be omitted when using u32
			fmt.Printf("%d = %d from %v | %d to %d\n", i, x, slc, ia, iz)
		}
		fmt.Println("")
	}

	printBufferAsUserTypedArray()

	fmt.Println("Copy data to wasm memory.")
	for i := 0; i < length; i++ {
		// int32/uint32 conversions can be omitted when using u32
		x := int64(inVec[i].Point.V) // <-- import happens here
		// WE NEED TO TAKE CARE. 4xBYTE = 1x INT32
		ia := ptr + int32(i)*typeSize
		iz := ptr + int32(i)*typeSize + typeSize
		slc := rawMemory[ia:iz]
		binary.LittleEndian.PutUint64(slc, uint64(x))
	}

	printBufferAsUserTypedArray()

	// apply work
	fmt.Println("Apply work.")
	wasmCall(wasmName, "apply")

	fmt.Println("Read results:")
	printBufferAsUserTypedArray()

	// modify input vector inVec. I hope this is okay...!
	for i := 0; i < length; i++ {
		ia := ptr + int32(i)*typeSize
		iz := ptr + int32(i)*typeSize + typeSize
		slc := rawMemory[ia:iz]
		x := int64(binary.LittleEndian.Uint64(slc)) // int32 conversion can be omitted when using u32
		inVec[i].Point.V = float64(x)
	}

	return inVec
}
