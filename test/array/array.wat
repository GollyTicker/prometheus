(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32)))
  (func (;0;) (type 1)
    (local i32 i32)
    i32.const -256
    local.set 0
    loop  ;; label = @1
      local.get 0
      i32.const 1048832
      i32.add
      local.tee 1
      i64.const 0
      local.get 1
      i64.load align=1
      i64.sub
      i64.const 2
      i64.div_s
      i64.store align=1
      local.get 0
      i32.const 1048840
      i32.add
      local.tee 1
      i64.const 0
      local.get 1
      i64.load align=1
      i64.sub
      i64.const 2
      i64.div_s
      i64.store align=1
      local.get 0
      i32.const 16
      i32.add
      local.tee 0
      br_if 0 (;@1;)
    end)
  (func (;1;) (type 2) (param i32)
    i32.const 1048576
    local.get 0
    i32.store8)
  (func (;2;) (type 0) (result i32)
    i32.const 1048576
    i32.load8_u)
  (func (;3;) (type 0) (result i32)
    i32.const 32)
  (func (;4;) (type 0) (result i32)
    i32.const 1048576)
  (func (;5;) (type 0) (result i32)
    i32.const 8)
  (memory (;0;) 17)
  (export "memory" (memory 0))
  (export "length" (func 3))
  (export "get_wasm_memory_buffer_ptr" (func 4))
  (export "user_level_type" (func 5))
  (export "apply" (func 0))
  (export "store_value_in_wasm_memory_buffer" (func 1))
  (export "read_wasm_memory_buffer" (func 2)))
