(module ;; adapted from wasmtime go package example
  (type (;0;) (func (result i32)))
  (func $run (param i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        local.get 1
        local.set 2
        br 1 (;@1;)
      end
      loop  ;; label = @2
        local.get 1
        local.get 0
        local.tee 2
        i32.rem_u
        local.set 0
        local.get 2
        local.set 1
        local.get 0
        br_if 0 (;@2;)
      end
    end
    local.get 2
  )
  (func (;1;) (type 0) (result i32)
    i32.const 1)
  (export "run" (func $run))
  (export "input_type" (func 1))
)

