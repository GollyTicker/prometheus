(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func (param i32)))
  (func (;0;) (type 1) (param i32)
    i32.const 1048576
    local.get 0
    i32.store8)
  (func (;1;) (type 0) (result i32)
    i32.const 1048576
    i32.load8_u)
  (func (;2;) (type 0) (result i32)
    i32.const 1048576)
  (memory (;0;) 17)
  (export "memory" (memory 0))
  (export "store_value_in_wasm_memory_buffer" (func 0))
  (export "get_wasm_memory_buffer_ptr" (func 2))
  (export "read_wasm_memory_buffer" (func 1)))
