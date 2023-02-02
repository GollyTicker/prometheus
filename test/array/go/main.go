package main

// run me via
// $ go run main.go

import (
	"fmt"
	"log"
	"runtime"

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

	fmt.Printf("instance ready: %s\n", instance)

	fmt.Println("writing to wasm memory")
	store_value := instance.GetFunc(store, "store_value_in_wasm_memory_buffer")
	_, err = store_value.Call(store, 120)
	if err != nil {
		panic(err)
	}

	fmt.Println("Accessing wasm memory from host-side")
	wasmMemory := instance.GetExport(store, "memory").Memory()
	rawMemory := wasmMemory.UnsafeData(store)
	fmt.Printf("wasmMemory: %s\n", wasmMemory)

	get_ptr := instance.GetFunc(store, "get_wasm_memory_buffer_ptr")
	ptr, err := get_ptr.Call(store)
	if err != nil {
		panic(err)
	}
	offset := ptr.(int32)
	fmt.Printf("ptr: %s\n", offset)

	fmt.Println("Reading wasm memory from host side")
	fmt.Printf("len: %s\n", len(rawMemory))
	fmt.Printf("head - expecting 120: %s\n", rawMemory[offset+0])

	fmt.Println("Write in Go, read from wasm")
	rawMemory[offset+0] = 43

	fmt.Println("Reading in wasm")
	res, err := instance.GetFunc(store, "read_wasm_memory_buffer").Call(store)
	if err != nil {
		panic(err)
	}

	fmt.Printf("res - expecting 43: %s\n", res)

	return

	// ======================================================
	// ======================================================
	// stuff from another internet tutorial

	// Load up our exports from the instance
	memory := instance.GetExport(store, "memory").Memory()
	getWasmMemoryBufferPointer := instance.GetFunc(store, "getWasmMemoryBufferPointer")
	fmt.Printf("getWasmMemoryBufferPointer: %s", getWasmMemoryBufferPointer.Type(store))

	sizeFn := instance.GetFunc(store, "size")
	loadFn := instance.GetFunc(store, "load")
	storeFn := instance.GetFunc(store, "store")

	fmt.Printf("Memory of size %d\n", memory.Size(store))

	fmt.Printf("function loadfn of size %d\n", memory.Size(store))

	// some helper functions we'll use below
	call32 := func(f *wasmtime.Func, args ...interface{}) int32 {
		ret, err := f.Call(store, args...)
		if err != nil {
			log.Fatal(err)
		}
		return ret.(int32)
	}
	call := func(f *wasmtime.Func, args ...interface{}) {
		_, err := f.Call(store, args...)
		if err != nil {
			log.Fatal(err)
		}
	}
	assertTraps := func(f *wasmtime.Func, args ...interface{}) {
		_, err := f.Call(store, args...)
		_, ok := err.(*wasmtime.Trap)
		if !ok {
			log.Fatal("expected a trap")
		}
	}
	assert := func(b bool) {
		if !b {
			log.Fatal("assertion failed")
		}
	}

	// Check the initial memory sizes/contents
	assert(memory.Size(store) == 2)
	assert(memory.DataSize(store) == 0x20000)
	buf := memory.UnsafeData(store)

	assert(buf[0] == 0)
	assert(buf[0x1000] == 1)
	assert(buf[0x1003] == 4)

	assert(call32(sizeFn) == 2)
	assert(call32(loadFn, 0) == 0)
	assert(call32(loadFn, 0x1000) == 1)
	assert(call32(loadFn, 0x1003) == 4)
	assert(call32(loadFn, 0x1ffff) == 0)
	assertTraps(loadFn, 0x20000)

	// We can mutate memory as well
	buf[0x1003] = 5
	call(storeFn, 0x1002, 6)
	assertTraps(storeFn, 0x20000, 0)

	assert(buf[0x1002] == 6)
	assert(buf[0x1003] == 5)
	assert(call32(loadFn, 0x1002) == 6)
	assert(call32(loadFn, 0x1003) == 5)

	// And like wasm instructions, we can grow memory
	_, err = memory.Grow(store, 1)
	assert(err == nil)
	assert(memory.Size(store) == 3)
	assert(memory.DataSize(store) == 0x30000)

	assert(call32(loadFn, 0x20000) == 0)
	call(storeFn, 0x20000, 0)
	assertTraps(loadFn, 0x30000)
	assertTraps(storeFn, 0x30000, 0)

	// Memory can fail to grow
	_, err = memory.Grow(store, 1)
	assert(err != nil)
	_, err = memory.Grow(store, 0)
	assert(err == nil)

	// Ensure that `memory` lives long enough to cover all our usages of
	// using its internal buffer we read from `UnsafeData()`
	runtime.KeepAlive(memory)

	// Finally we can also create standalone memories to get imported by
	// wasm modules too.
	memorytype := wasmtime.NewMemoryType(5, true, 5)
	memory2, err := wasmtime.NewMemory(store, memorytype)
	assert(err == nil)
	assert(memory2.Size(store) == 5)
	_, err = memory2.Grow(store, 1)
	assert(err != nil)
	_, err = memory2.Grow(store, 0)
	assert(err == nil)

}
