(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32)))
  (func (;0;) (type 1)
    (local i32)
    i32.const 1048576
    i32.const 1048576
    i32.load
    local.tee 0
    local.get 0
    i32.mul
    i32.store
    i32.const 1048580
    i32.const 1048580
    i32.load
    local.tee 0
    local.get 0
    i32.mul
    i32.store
    i32.const 1048584
    i32.const 1048584
    i32.load
    local.tee 0
    local.get 0
    i32.mul
    i32.store
    i32.const 1048588
    i32.const 1048588
    i32.load
    local.tee 0
    local.get 0
    i32.mul
    i32.store
    i32.const 1048592
    i32.const 1048592
    i32.load
    local.tee 0
    local.get 0
    i32.mul
    i32.store
    i32.const 1048596
    i32.const 1048596
    i32.load
    local.tee 0
    local.get 0
    i32.mul
    i32.store
    i32.const 1048600
    i32.const 1048600
    i32.load
    local.tee 0
    local.get 0
    i32.mul
    i32.store
    i32.const 1048604
    i32.const 1048604
    i32.load
    local.tee 0
    local.get 0
    i32.mul
    i32.store
    i32.const 1048608
    i32.const 1048608
    i32.load
    local.tee 0
    local.get 0
    i32.mul
    i32.store
    i32.const 1048612
    i32.const 1048612
    i32.load
    local.tee 0
    local.get 0
    i32.mul
    i32.store)
  (func (;1;) (type 2) (param i32)
    i32.const 1048576
    local.get 0
    i32.store)
  (func (;2;) (type 0) (result i32)
    i32.const 1048576
    i32.load)
  (func (;3;) (type 0) (result i32)
    i32.const 10)
  (func (;4;) (type 0) (result i32)
    i32.const 1048576)
  (memory (;0;) 17)
  (export "memory" (memory 0))
  (export "store_value_in_wasm_memory_buffer" (func 1))
  (export "length" (func 3))
  (export "get_wasm_memory_buffer_ptr" (func 4))
  (export "read_wasm_memory_buffer" (func 2))
  (export "apply" (func 0)))
