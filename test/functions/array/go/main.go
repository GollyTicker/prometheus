package main

// run me via
// $ go run main.go

import (
	"encoding/binary"
	"fmt"

	"github.com/bytecodealliance/wasmtime-go"
)

func main() {
	// what does the store do and mean? It's an argument everywhere!
	store := wasmtime.NewStore(wasmtime.NewEngine())
	module, err := wasmtime.NewModuleFromFile(store.Engine, "../pkg/array_bg.wasm")
	if err != nil {
		panic(err)
	}
	instance, err := wasmtime.NewInstance(store, module, []wasmtime.AsExtern{})
	if err != nil {
		panic(err)
	}

	wasmCall := func(name string, args ...interface{}) interface{} {
		res, err := instance.GetFunc(store, name).Call(store, args...)
		if err != nil {
			panic(err)
		}
		return res
	}

	fmt.Printf("instance ready: %s\n", instance)

	fmt.Println("Accessing wasm memory from host-side")
	wasmMemory := instance.GetExport(store, "memory").Memory()
	rawMemory := wasmMemory.UnsafeData(store)
	fmt.Printf("wasmMemory: %s\n", wasmMemory)

	ptr := wasmCall("get_wasm_memory_buffer_ptr").(int32)
	fmt.Printf("ptr: %s\n", ptr)

	userType := wasmCall("user_level_type").(int32)
	if userType != 7 {
		panic("User user-level-type 7 = i32 supported atm!")
	}
	var typeSize int32 = 4

	fmt.Println("-----------------------------")
	length := int(wasmCall("length").(int32))

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

	printBufferAsInt32Array := func() {
		for i := 0; i < length; i++ {
			// WE NEED TO TAKE CARE. 4xBYTE = 1x INT32
			// Little-Endian, because wasm spec.
			ia := ptr + int32(i)*typeSize
			iz := ptr + int32(i)*typeSize + typeSize
			slc := rawMemory[ia:iz]
			x := int32(binary.LittleEndian.Uint32(slc)) // int32 conversion can be omitted when using u32
			fmt.Printf("%d = %d from %v | %d to %d\n", i, x, slc, ia, iz)
		}
		fmt.Println("")
	}

	fmt.Println("Set some data.")
	for i := 0; i < length; i++ {
		// int32/uint32 conversions can be omitted when using u32
		x := int32(i % 5)
		// WE NEED TO TAKE CARE. 4xBYTE = 1x INT32
		ia := ptr + int32(i)*typeSize
		iz := ptr + int32(i)*typeSize + typeSize
		slc := rawMemory[ia:iz]
		binary.LittleEndian.PutUint32(slc, uint32(x))
	}

	printBufferAsInt32Array()

	// apply work
	fmt.Println("Apply work.")
	wasmCall("apply")

	fmt.Println("Read results:")
	printBufferAsInt32Array()
}
