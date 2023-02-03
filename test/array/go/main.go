package main

// run me via
// $ go run main.go

import (
	"encoding/binary"
	"fmt"

	"github.com/bytecodealliance/wasmtime-go"
)

func main() {
	// what does ths tore do and mean? It's an argument everywhere!
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

	// fmt.Println("writing to wasm memory")
	// wasmCall("store_value_in_wasm_memory_buffer", 120)

	fmt.Println("Accessing wasm memory from host-side")
	wasmMemory := instance.GetExport(store, "memory").Memory()
	rawMemory := wasmMemory.UnsafeData(store)
	// memTypeId := wasmCall("get_wasm_memory_buffer_type")
	// zodo. how to we get to know how wasm-time works with the linear memory and the serialisation?
	// ====================== NOTE: USING SIGNED INTEGERS IS NASTY. WE SHOULD MANUALLY
	// ====================== TAKE CARE OF SERIALISATION/DESERIALISATION ON BOTH SIDES FOR NOW.
	// It's nasty, because somewhere wasmtime choses how the i32 in rust-wasm is represented in the rawMemory array.
	// We don't know that, and hence it's difficult to read that correctly.
	// In the bottom approach I still had to reverse engineer, that LittleEndian is used...
	// It tursn out, that the WASM standard specifies LittleEndianness:
	// https://webassembly.github.io/spec/core/syntax/instructions.html#syntax-instr-memory
	fmt.Printf("wasmMemory: %s\n", wasmMemory)

	ptr := wasmCall("get_wasm_memory_buffer_ptr").(int32)
	fmt.Printf("ptr: %s\n", ptr)

	// fmt.Println("Reading wasm memory from host side")
	// fmt.Printf("len: %s\n", len(rawMemory))
	// fmt.Printf("head - expecting 120: %s\n", rawMemory[ptr+0])

	// fmt.Println("Write in Go, read from wasm")
	// rawMemory[ptr+0] = 43

	// fmt.Println("Reading in wasm")
	// res := wasmCall("read_wasm_memory_buffer")

	// fmt.Printf("res - expecting 43: %s\n", res)

	fmt.Println("-----------------------------")
	length := int(wasmCall("length").(int32))

	printBufferAsInt32Array := func() {
		for i := 0; i < length; i++ {
			// WE NEED TO TAKE CARE. 4xBYTE = 1x INT32
			ia := ptr + int32(i*4)
			iz := ptr + int32(i*4) + 4
			slc := rawMemory[ia:iz]
			x := binary.LittleEndian.Uint32(slc) // How to avoid this explicit endianness here?
			fmt.Printf("%d = %d from %v | %d to %d\n", i, x, slc, ia, iz)
		}
		fmt.Println("")
	}

	// generate some data
	for i := 0; i < length; i++ {
		x := uint32(i % 5)
		// WE NEED TO TAKE CARE. 4xBYTE = 1x INT32
		ia := ptr + int32(i*4)
		iz := ptr + int32(i*4) + 4
		slc := rawMemory[ia:iz]
		binary.LittleEndian.PutUint32(slc, x) // How to avoid this explicit endianness here?
	}

	printBufferAsInt32Array()

	// fmt.Println("Set some data.")

	// apply work
	// fmt.Println("Apply work.")
	wasmCall("apply")

	// fmt.Println("Read results:")
	printBufferAsInt32Array()
}
