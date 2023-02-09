package main

import (
	"fmt"
	"log"
	"runtime"

	"github.com/bytecodealliance/wasmtime-go"
)

const moduleDef = `
(module
	(memory (export "memory") 2 3)

	(func (export "size") (result i32) (memory.size))
	(func (export "load") (param i32) (result i32)
		(i32.load8_s (local.get 0))
	)
	(func (export "store") (param i32 i32)
		(i32.store8 (local.get 0) (local.get 1))
	)

	(data (i32.const 0x1000) "\01\02\03\04")
)
`

func main() {
	store := wasmtime.NewStore(wasmtime.NewEngine())
	// wasm, err := wasmtime.Wat2Wasm(moduleDef)
	// if err != nil {
	// 	panic(err)
	// }
	// module, err := wasmtime.NewModule(store.Engine, wasm)
	module, err := wasmtime.NewModuleFromFile(store.Engine, "../array.wasm")
	if err != nil {
		panic(err)
	}
	instance, err := wasmtime.NewInstance(store, module, []wasmtime.AsExtern{})
	if err != nil {
		panic(err)
	}

	// Load up our exports from the instance
	memory := instance.GetExport(store, "memory").Memory()
	getWasmMemoryBufferPointer := instance.GetFunc(store, "getWasmMemoryBufferPointer")
	fmt.Printf("getWasmMemoryBufferPointer: %s", getWasmMemoryBufferPointer.Type(store))

	if true {
		return
	}

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
