(module
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func (param i32)))
  (type (;5;) (func (result i32)))
  (type (;6;) (func (param i32 i32 i32)))
  (type (;7;) (func (param i32) (result i64)))
  (type (;8;) (func))
  (type (;9;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;10;) (func (param i32 i32 i32 i32)))
  (type (;11;) (func (param i32 i32 i32 i32 i32)))
  (type (;12;) (func (param i64 i32) (result i32)))
  (func (;0;) (type 3) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 11
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 245
        i32.ge_u
        if  ;; label = @3
          i32.const 8
          i32.const 8
          call 55
          local.set 6
          i32.const 20
          i32.const 8
          call 55
          local.set 5
          i32.const 16
          i32.const 8
          call 55
          local.set 1
          i32.const 0
          i32.const 16
          i32.const 8
          call 55
          i32.const 2
          i32.shl
          i32.sub
          local.tee 2
          i32.const -65536
          local.get 1
          local.get 5
          local.get 6
          i32.add
          i32.add
          i32.sub
          i32.const -9
          i32.and
          i32.const -3
          i32.add
          local.tee 1
          local.get 2
          local.get 1
          i32.lt_u
          select
          local.get 0
          i32.le_u
          br_if 2 (;@1;)
          local.get 0
          i32.const 4
          i32.add
          i32.const 8
          call 55
          local.set 4
          i32.const 1066420
          i32.load
          i32.eqz
          br_if 1 (;@2;)
          i32.const 0
          local.get 4
          i32.sub
          local.set 3
          block  ;; label = @4
            block  ;; label = @5
              block (result i32)  ;; label = @6
                i32.const 0
                local.get 4
                i32.const 256
                i32.lt_u
                br_if 0 (;@6;)
                drop
                i32.const 31
                local.get 4
                i32.const 16777215
                i32.gt_u
                br_if 0 (;@6;)
                drop
                local.get 4
                i32.const 6
                local.get 4
                i32.const 8
                i32.shr_u
                i32.clz
                local.tee 0
                i32.sub
                i32.shr_u
                i32.const 1
                i32.and
                local.get 0
                i32.const 1
                i32.shl
                i32.sub
                i32.const 62
                i32.add
              end
              local.tee 6
              i32.const 2
              i32.shl
              i32.const 1066008
              i32.add
              i32.load
              local.tee 0
              if  ;; label = @6
                local.get 4
                local.get 6
                call 53
                i32.shl
                local.set 7
                i32.const 0
                local.set 5
                i32.const 0
                local.set 1
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    call 70
                    local.tee 2
                    local.get 4
                    i32.lt_u
                    br_if 0 (;@8;)
                    local.get 2
                    local.get 4
                    i32.sub
                    local.tee 2
                    local.get 3
                    i32.ge_u
                    br_if 0 (;@8;)
                    local.get 0
                    local.set 1
                    local.get 2
                    local.tee 3
                    br_if 0 (;@8;)
                    i32.const 0
                    local.set 3
                    br 3 (;@5;)
                  end
                  local.get 0
                  i32.const 20
                  i32.add
                  i32.load
                  local.tee 2
                  local.get 5
                  local.get 2
                  local.get 0
                  local.get 7
                  i32.const 29
                  i32.shr_u
                  i32.const 4
                  i32.and
                  i32.add
                  i32.const 16
                  i32.add
                  i32.load
                  local.tee 0
                  i32.ne
                  select
                  local.get 5
                  local.get 2
                  select
                  local.set 5
                  local.get 7
                  i32.const 1
                  i32.shl
                  local.set 7
                  local.get 0
                  br_if 0 (;@7;)
                end
                local.get 5
                if  ;; label = @7
                  local.get 5
                  local.set 0
                  br 2 (;@5;)
                end
                local.get 1
                br_if 2 (;@4;)
              end
              i32.const 0
              local.set 1
              i32.const 1
              local.get 6
              i32.shl
              call 56
              i32.const 1066420
              i32.load
              i32.and
              local.tee 0
              i32.eqz
              br_if 3 (;@2;)
              local.get 0
              call 62
              i32.ctz
              i32.const 2
              i32.shl
              i32.const 1066008
              i32.add
              i32.load
              local.tee 0
              i32.eqz
              br_if 3 (;@2;)
            end
            loop  ;; label = @5
              local.get 0
              local.get 1
              local.get 0
              call 70
              local.tee 1
              local.get 4
              i32.ge_u
              local.get 1
              local.get 4
              i32.sub
              local.tee 5
              local.get 3
              i32.lt_u
              i32.and
              local.tee 2
              select
              local.set 1
              local.get 5
              local.get 3
              local.get 2
              select
              local.set 3
              local.get 0
              call 52
              local.tee 0
              br_if 0 (;@5;)
            end
            local.get 1
            i32.eqz
            br_if 2 (;@2;)
          end
          i32.const 1066424
          i32.load
          local.tee 0
          local.get 4
          i32.ge_u
          i32.const 0
          local.get 3
          local.get 0
          local.get 4
          i32.sub
          i32.ge_u
          select
          br_if 1 (;@2;)
          local.get 1
          local.tee 0
          local.get 4
          call 78
          local.set 6
          local.get 0
          call 16
          block  ;; label = @4
            local.get 3
            i32.const 16
            i32.const 8
            call 55
            i32.ge_u
            if  ;; label = @5
              local.get 0
              local.get 4
              call 64
              local.get 6
              local.get 3
              call 54
              local.get 3
              i32.const 256
              i32.ge_u
              if  ;; label = @6
                local.get 6
                local.get 3
                call 15
                br 2 (;@4;)
              end
              local.get 3
              i32.const -8
              i32.and
              i32.const 1066152
              i32.add
              local.set 5
              block (result i32)  ;; label = @6
                i32.const 1066416
                i32.load
                local.tee 2
                i32.const 1
                local.get 3
                i32.const 3
                i32.shr_u
                i32.shl
                local.tee 1
                i32.and
                if  ;; label = @7
                  local.get 5
                  i32.load offset=8
                  br 1 (;@6;)
                end
                i32.const 1066416
                local.get 1
                local.get 2
                i32.or
                i32.store
                local.get 5
              end
              local.set 1
              local.get 5
              local.get 6
              i32.store offset=8
              local.get 1
              local.get 6
              i32.store offset=12
              local.get 6
              local.get 5
              i32.store offset=12
              local.get 6
              local.get 1
              i32.store offset=8
              br 1 (;@4;)
            end
            local.get 0
            local.get 3
            local.get 4
            i32.add
            call 50
          end
          local.get 0
          call 80
          local.tee 3
          i32.eqz
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        i32.const 16
        local.get 0
        i32.const 4
        i32.add
        i32.const 16
        i32.const 8
        call 55
        i32.const -5
        i32.add
        local.get 0
        i32.gt_u
        select
        i32.const 8
        call 55
        local.set 4
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block (result i32)  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    i32.const 1066416
                    i32.load
                    local.tee 1
                    local.get 4
                    i32.const 3
                    i32.shr_u
                    local.tee 0
                    i32.shr_u
                    local.tee 2
                    i32.const 3
                    i32.and
                    i32.eqz
                    if  ;; label = @9
                      local.get 4
                      i32.const 1066424
                      i32.load
                      i32.le_u
                      br_if 7 (;@2;)
                      local.get 2
                      br_if 1 (;@8;)
                      i32.const 1066420
                      i32.load
                      local.tee 0
                      i32.eqz
                      br_if 7 (;@2;)
                      local.get 0
                      call 62
                      i32.ctz
                      i32.const 2
                      i32.shl
                      i32.const 1066008
                      i32.add
                      i32.load
                      local.tee 1
                      call 70
                      local.get 4
                      i32.sub
                      local.set 3
                      local.get 1
                      call 52
                      local.tee 0
                      if  ;; label = @10
                        loop  ;; label = @11
                          local.get 0
                          call 70
                          local.get 4
                          i32.sub
                          local.tee 2
                          local.get 3
                          local.get 2
                          local.get 3
                          i32.lt_u
                          local.tee 2
                          select
                          local.set 3
                          local.get 0
                          local.get 1
                          local.get 2
                          select
                          local.set 1
                          local.get 0
                          call 52
                          local.tee 0
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 1
                      local.tee 0
                      local.get 4
                      call 78
                      local.set 5
                      local.get 0
                      call 16
                      local.get 3
                      i32.const 16
                      i32.const 8
                      call 55
                      i32.lt_u
                      br_if 5 (;@4;)
                      local.get 0
                      local.get 4
                      call 64
                      local.get 5
                      local.get 3
                      call 54
                      i32.const 1066424
                      i32.load
                      local.tee 1
                      i32.eqz
                      br_if 4 (;@5;)
                      local.get 1
                      i32.const -8
                      i32.and
                      i32.const 1066152
                      i32.add
                      local.set 7
                      i32.const 1066432
                      i32.load
                      local.set 6
                      i32.const 1066416
                      i32.load
                      local.tee 2
                      i32.const 1
                      local.get 1
                      i32.const 3
                      i32.shr_u
                      i32.shl
                      local.tee 1
                      i32.and
                      i32.eqz
                      br_if 2 (;@7;)
                      local.get 7
                      i32.load offset=8
                      br 3 (;@6;)
                    end
                    block  ;; label = @9
                      local.get 2
                      i32.const -1
                      i32.xor
                      i32.const 1
                      i32.and
                      local.get 0
                      i32.add
                      local.tee 3
                      i32.const 3
                      i32.shl
                      local.tee 0
                      i32.const 1066160
                      i32.add
                      i32.load
                      local.tee 5
                      i32.const 8
                      i32.add
                      i32.load
                      local.tee 2
                      local.get 0
                      i32.const 1066152
                      i32.add
                      local.tee 0
                      i32.ne
                      if  ;; label = @10
                        local.get 2
                        local.get 0
                        i32.store offset=12
                        local.get 0
                        local.get 2
                        i32.store offset=8
                        br 1 (;@9;)
                      end
                      i32.const 1066416
                      local.get 1
                      i32.const -2
                      local.get 3
                      i32.rotl
                      i32.and
                      i32.store
                    end
                    local.get 5
                    local.get 3
                    i32.const 3
                    i32.shl
                    call 50
                    local.get 5
                    call 80
                    local.set 3
                    br 7 (;@1;)
                  end
                  block  ;; label = @8
                    i32.const 1
                    local.get 0
                    i32.const 31
                    i32.and
                    local.tee 0
                    i32.shl
                    call 56
                    local.get 2
                    local.get 0
                    i32.shl
                    i32.and
                    call 62
                    i32.ctz
                    local.tee 2
                    i32.const 3
                    i32.shl
                    local.tee 0
                    i32.const 1066160
                    i32.add
                    i32.load
                    local.tee 3
                    i32.const 8
                    i32.add
                    i32.load
                    local.tee 1
                    local.get 0
                    i32.const 1066152
                    i32.add
                    local.tee 0
                    i32.ne
                    if  ;; label = @9
                      local.get 1
                      local.get 0
                      i32.store offset=12
                      local.get 0
                      local.get 1
                      i32.store offset=8
                      br 1 (;@8;)
                    end
                    i32.const 1066416
                    i32.const 1066416
                    i32.load
                    i32.const -2
                    local.get 2
                    i32.rotl
                    i32.and
                    i32.store
                  end
                  local.get 3
                  local.get 4
                  call 64
                  local.get 3
                  local.get 4
                  call 78
                  local.tee 5
                  local.get 2
                  i32.const 3
                  i32.shl
                  local.get 4
                  i32.sub
                  local.tee 2
                  call 54
                  i32.const 1066424
                  i32.load
                  local.tee 0
                  if  ;; label = @8
                    local.get 0
                    i32.const -8
                    i32.and
                    i32.const 1066152
                    i32.add
                    local.set 7
                    i32.const 1066432
                    i32.load
                    local.set 6
                    block (result i32)  ;; label = @9
                      i32.const 1066416
                      i32.load
                      local.tee 1
                      i32.const 1
                      local.get 0
                      i32.const 3
                      i32.shr_u
                      i32.shl
                      local.tee 0
                      i32.and
                      if  ;; label = @10
                        local.get 7
                        i32.load offset=8
                        br 1 (;@9;)
                      end
                      i32.const 1066416
                      local.get 0
                      local.get 1
                      i32.or
                      i32.store
                      local.get 7
                    end
                    local.set 0
                    local.get 7
                    local.get 6
                    i32.store offset=8
                    local.get 0
                    local.get 6
                    i32.store offset=12
                    local.get 6
                    local.get 7
                    i32.store offset=12
                    local.get 6
                    local.get 0
                    i32.store offset=8
                  end
                  i32.const 1066432
                  local.get 5
                  i32.store
                  i32.const 1066424
                  local.get 2
                  i32.store
                  local.get 3
                  call 80
                  local.set 3
                  br 6 (;@1;)
                end
                i32.const 1066416
                local.get 1
                local.get 2
                i32.or
                i32.store
                local.get 7
              end
              local.set 1
              local.get 7
              local.get 6
              i32.store offset=8
              local.get 1
              local.get 6
              i32.store offset=12
              local.get 6
              local.get 7
              i32.store offset=12
              local.get 6
              local.get 1
              i32.store offset=8
            end
            i32.const 1066432
            local.get 5
            i32.store
            i32.const 1066424
            local.get 3
            i32.store
            br 1 (;@3;)
          end
          local.get 0
          local.get 3
          local.get 4
          i32.add
          call 50
        end
        local.get 0
        call 80
        local.tee 3
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      i32.const 1066424
                      i32.load
                      local.tee 0
                      local.get 4
                      i32.lt_u
                      if  ;; label = @10
                        i32.const 1066428
                        i32.load
                        local.tee 0
                        local.get 4
                        i32.gt_u
                        br_if 2 (;@8;)
                        local.get 11
                        i32.const 8
                        i32.const 8
                        call 55
                        local.get 4
                        i32.add
                        i32.const 20
                        i32.const 8
                        call 55
                        i32.add
                        i32.const 16
                        i32.const 8
                        call 55
                        i32.add
                        i32.const 65536
                        call 55
                        call 43
                        local.get 11
                        i32.load
                        local.tee 8
                        br_if 1 (;@9;)
                        i32.const 0
                        local.set 3
                        br 9 (;@1;)
                      end
                      i32.const 1066432
                      i32.load
                      local.set 2
                      local.get 0
                      local.get 4
                      i32.sub
                      local.tee 1
                      i32.const 16
                      i32.const 8
                      call 55
                      i32.lt_u
                      if  ;; label = @10
                        i32.const 1066432
                        i32.const 0
                        i32.store
                        i32.const 1066424
                        i32.load
                        local.set 0
                        i32.const 1066424
                        i32.const 0
                        i32.store
                        local.get 2
                        local.get 0
                        call 50
                        local.get 2
                        call 80
                        local.set 3
                        br 9 (;@1;)
                      end
                      local.get 2
                      local.get 4
                      call 78
                      local.set 0
                      i32.const 1066424
                      local.get 1
                      i32.store
                      i32.const 1066432
                      local.get 0
                      i32.store
                      local.get 0
                      local.get 1
                      call 54
                      local.get 2
                      local.get 4
                      call 64
                      local.get 2
                      call 80
                      local.set 3
                      br 8 (;@1;)
                    end
                    local.get 11
                    i32.load offset=8
                    local.set 12
                    i32.const 1066440
                    local.get 11
                    i32.load offset=4
                    local.tee 10
                    i32.const 1066440
                    i32.load
                    i32.add
                    local.tee 1
                    i32.store
                    i32.const 1066444
                    i32.const 1066444
                    i32.load
                    local.tee 0
                    local.get 1
                    local.get 0
                    local.get 1
                    i32.gt_u
                    select
                    i32.store
                    block  ;; label = @9
                      block  ;; label = @10
                        i32.const 1066436
                        i32.load
                        if  ;; label = @11
                          i32.const 1066136
                          local.set 0
                          loop  ;; label = @12
                            local.get 0
                            call 65
                            local.get 8
                            i32.eq
                            br_if 2 (;@10;)
                            local.get 0
                            i32.load offset=8
                            local.tee 0
                            br_if 0 (;@12;)
                          end
                          br 2 (;@9;)
                        end
                        i32.const 1066452
                        i32.load
                        local.tee 0
                        i32.eqz
                        local.get 8
                        local.get 0
                        i32.lt_u
                        i32.or
                        br_if 3 (;@7;)
                        br 7 (;@3;)
                      end
                      local.get 0
                      call 72
                      br_if 0 (;@9;)
                      local.get 0
                      call 73
                      local.get 12
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 0
                      local.tee 1
                      i32.load
                      local.tee 5
                      i32.const 1066436
                      i32.load
                      local.tee 2
                      i32.le_u
                      if (result i32)  ;; label = @10
                        local.get 5
                        local.get 1
                        i32.load offset=4
                        i32.add
                        local.get 2
                        i32.gt_u
                      else
                        i32.const 0
                      end
                      br_if 3 (;@6;)
                    end
                    i32.const 1066452
                    i32.const 1066452
                    i32.load
                    local.tee 0
                    local.get 8
                    local.get 8
                    local.get 0
                    i32.gt_u
                    select
                    i32.store
                    local.get 8
                    local.get 10
                    i32.add
                    local.set 1
                    i32.const 1066136
                    local.set 0
                    block  ;; label = @9
                      block  ;; label = @10
                        loop  ;; label = @11
                          local.get 1
                          local.get 0
                          i32.load
                          i32.ne
                          if  ;; label = @12
                            local.get 0
                            i32.load offset=8
                            local.tee 0
                            br_if 1 (;@11;)
                            br 2 (;@10;)
                          end
                        end
                        local.get 0
                        call 72
                        br_if 0 (;@10;)
                        local.get 0
                        call 73
                        local.get 12
                        i32.eq
                        br_if 1 (;@9;)
                      end
                      i32.const 1066436
                      i32.load
                      local.set 9
                      i32.const 1066136
                      local.set 0
                      block  ;; label = @10
                        loop  ;; label = @11
                          local.get 0
                          i32.load
                          local.get 9
                          i32.le_u
                          if  ;; label = @12
                            local.get 0
                            call 65
                            local.get 9
                            i32.gt_u
                            br_if 2 (;@10;)
                          end
                          local.get 0
                          i32.load offset=8
                          local.tee 0
                          br_if 0 (;@11;)
                        end
                        i32.const 0
                        local.set 0
                      end
                      local.get 9
                      local.get 0
                      call 65
                      local.tee 6
                      i32.const 20
                      i32.const 8
                      call 55
                      local.tee 15
                      i32.sub
                      i32.const -23
                      i32.add
                      local.tee 1
                      call 80
                      local.tee 0
                      i32.const 8
                      call 55
                      local.get 0
                      i32.sub
                      local.get 1
                      i32.add
                      local.tee 0
                      local.get 0
                      i32.const 16
                      i32.const 8
                      call 55
                      local.get 9
                      i32.add
                      i32.lt_u
                      select
                      local.tee 13
                      call 80
                      local.set 14
                      local.get 13
                      local.get 15
                      call 78
                      local.set 0
                      i32.const 8
                      i32.const 8
                      call 55
                      local.set 3
                      i32.const 20
                      i32.const 8
                      call 55
                      local.set 5
                      i32.const 16
                      i32.const 8
                      call 55
                      local.set 2
                      i32.const 1066436
                      local.get 8
                      local.get 8
                      call 80
                      local.tee 1
                      i32.const 8
                      call 55
                      local.get 1
                      i32.sub
                      local.tee 1
                      call 78
                      local.tee 7
                      i32.store
                      i32.const 1066428
                      local.get 10
                      i32.const 8
                      i32.add
                      local.get 2
                      local.get 3
                      local.get 5
                      i32.add
                      i32.add
                      local.get 1
                      i32.add
                      i32.sub
                      local.tee 3
                      i32.store
                      local.get 7
                      local.get 3
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      i32.const 8
                      i32.const 8
                      call 55
                      local.set 5
                      i32.const 20
                      i32.const 8
                      call 55
                      local.set 2
                      i32.const 16
                      i32.const 8
                      call 55
                      local.set 1
                      local.get 7
                      local.get 3
                      call 78
                      local.get 1
                      local.get 2
                      local.get 5
                      i32.const 8
                      i32.sub
                      i32.add
                      i32.add
                      i32.store offset=4
                      i32.const 1066448
                      i32.const 2097152
                      i32.store
                      local.get 13
                      local.get 15
                      call 64
                      i32.const 1066136
                      i64.load align=4
                      local.set 16
                      local.get 14
                      i32.const 8
                      i32.add
                      i32.const 1066144
                      i64.load align=4
                      i64.store align=4
                      local.get 14
                      local.get 16
                      i64.store align=4
                      i32.const 1066148
                      local.get 12
                      i32.store
                      i32.const 1066140
                      local.get 10
                      i32.store
                      i32.const 1066136
                      local.get 8
                      i32.store
                      i32.const 1066144
                      local.get 14
                      i32.store
                      loop  ;; label = @10
                        local.get 0
                        i32.const 4
                        call 78
                        local.get 0
                        i32.const 7
                        i32.store offset=4
                        local.tee 0
                        i32.const 4
                        i32.add
                        local.get 6
                        i32.lt_u
                        br_if 0 (;@10;)
                      end
                      local.get 9
                      local.get 13
                      i32.eq
                      br_if 7 (;@2;)
                      local.get 9
                      local.get 13
                      local.get 9
                      i32.sub
                      local.tee 0
                      local.get 9
                      local.get 0
                      call 78
                      call 49
                      local.get 0
                      i32.const 256
                      i32.ge_u
                      if  ;; label = @10
                        local.get 9
                        local.get 0
                        call 15
                        br 8 (;@2;)
                      end
                      local.get 0
                      i32.const -8
                      i32.and
                      i32.const 1066152
                      i32.add
                      local.set 2
                      block (result i32)  ;; label = @10
                        i32.const 1066416
                        i32.load
                        local.tee 1
                        i32.const 1
                        local.get 0
                        i32.const 3
                        i32.shr_u
                        i32.shl
                        local.tee 0
                        i32.and
                        if  ;; label = @11
                          local.get 2
                          i32.load offset=8
                          br 1 (;@10;)
                        end
                        i32.const 1066416
                        local.get 0
                        local.get 1
                        i32.or
                        i32.store
                        local.get 2
                      end
                      local.set 0
                      local.get 2
                      local.get 9
                      i32.store offset=8
                      local.get 0
                      local.get 9
                      i32.store offset=12
                      local.get 9
                      local.get 2
                      i32.store offset=12
                      local.get 9
                      local.get 0
                      i32.store offset=8
                      br 7 (;@2;)
                    end
                    local.get 0
                    i32.load
                    local.set 3
                    local.get 0
                    local.get 8
                    i32.store
                    local.get 0
                    local.get 0
                    i32.load offset=4
                    local.get 10
                    i32.add
                    i32.store offset=4
                    local.get 8
                    call 80
                    local.tee 5
                    i32.const 8
                    call 55
                    local.set 2
                    local.get 3
                    call 80
                    local.tee 1
                    i32.const 8
                    call 55
                    local.set 0
                    local.get 8
                    local.get 2
                    local.get 5
                    i32.sub
                    i32.add
                    local.tee 6
                    local.get 4
                    call 78
                    local.set 7
                    local.get 6
                    local.get 4
                    call 64
                    local.get 3
                    local.get 0
                    local.get 1
                    i32.sub
                    i32.add
                    local.tee 0
                    local.get 4
                    local.get 6
                    i32.add
                    i32.sub
                    local.set 4
                    i32.const 1066436
                    i32.load
                    local.get 0
                    i32.ne
                    if  ;; label = @9
                      local.get 0
                      i32.const 1066432
                      i32.load
                      i32.eq
                      br_if 4 (;@5;)
                      local.get 0
                      i32.load offset=4
                      i32.const 3
                      i32.and
                      i32.const 1
                      i32.ne
                      br_if 5 (;@4;)
                      block  ;; label = @10
                        local.get 0
                        call 70
                        local.tee 5
                        i32.const 256
                        i32.ge_u
                        if  ;; label = @11
                          local.get 0
                          call 16
                          br 1 (;@10;)
                        end
                        local.get 0
                        i32.const 12
                        i32.add
                        i32.load
                        local.tee 2
                        local.get 0
                        i32.const 8
                        i32.add
                        i32.load
                        local.tee 1
                        i32.ne
                        if  ;; label = @11
                          local.get 1
                          local.get 2
                          i32.store offset=12
                          local.get 2
                          local.get 1
                          i32.store offset=8
                          br 1 (;@10;)
                        end
                        i32.const 1066416
                        i32.const 1066416
                        i32.load
                        i32.const -2
                        local.get 5
                        i32.const 3
                        i32.shr_u
                        i32.rotl
                        i32.and
                        i32.store
                      end
                      local.get 4
                      local.get 5
                      i32.add
                      local.set 4
                      local.get 0
                      local.get 5
                      call 78
                      local.set 0
                      br 5 (;@4;)
                    end
                    i32.const 1066436
                    local.get 7
                    i32.store
                    i32.const 1066428
                    i32.const 1066428
                    i32.load
                    local.get 4
                    i32.add
                    local.tee 0
                    i32.store
                    local.get 7
                    local.get 0
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    local.get 6
                    call 80
                    local.set 3
                    br 7 (;@1;)
                  end
                  i32.const 1066428
                  local.get 0
                  local.get 4
                  i32.sub
                  local.tee 1
                  i32.store
                  i32.const 1066436
                  i32.const 1066436
                  i32.load
                  local.tee 2
                  local.get 4
                  call 78
                  local.tee 0
                  i32.store
                  local.get 0
                  local.get 1
                  i32.const 1
                  i32.or
                  i32.store offset=4
                  local.get 2
                  local.get 4
                  call 64
                  local.get 2
                  call 80
                  local.set 3
                  br 6 (;@1;)
                end
                i32.const 1066452
                local.get 8
                i32.store
                br 3 (;@3;)
              end
              local.get 0
              local.get 0
              i32.load offset=4
              local.get 10
              i32.add
              i32.store offset=4
              i32.const 1066436
              i32.load
              i32.const 1066428
              i32.load
              local.get 10
              i32.add
              call 33
              br 3 (;@2;)
            end
            i32.const 1066432
            local.get 7
            i32.store
            i32.const 1066424
            i32.const 1066424
            i32.load
            local.get 4
            i32.add
            local.tee 0
            i32.store
            local.get 7
            local.get 0
            call 54
            local.get 6
            call 80
            local.set 3
            br 3 (;@1;)
          end
          local.get 7
          local.get 4
          local.get 0
          call 49
          local.get 4
          i32.const 256
          i32.ge_u
          if  ;; label = @4
            local.get 7
            local.get 4
            call 15
            local.get 6
            call 80
            local.set 3
            br 3 (;@1;)
          end
          local.get 4
          i32.const -8
          i32.and
          i32.const 1066152
          i32.add
          local.set 2
          block (result i32)  ;; label = @4
            i32.const 1066416
            i32.load
            local.tee 1
            i32.const 1
            local.get 4
            i32.const 3
            i32.shr_u
            i32.shl
            local.tee 0
            i32.and
            if  ;; label = @5
              local.get 2
              i32.load offset=8
              br 1 (;@4;)
            end
            i32.const 1066416
            local.get 0
            local.get 1
            i32.or
            i32.store
            local.get 2
          end
          local.set 0
          local.get 2
          local.get 7
          i32.store offset=8
          local.get 0
          local.get 7
          i32.store offset=12
          local.get 7
          local.get 2
          i32.store offset=12
          local.get 7
          local.get 0
          i32.store offset=8
          local.get 6
          call 80
          local.set 3
          br 2 (;@1;)
        end
        i32.const 1066456
        i32.const 4095
        i32.store
        i32.const 1066148
        local.get 12
        i32.store
        i32.const 1066140
        local.get 10
        i32.store
        i32.const 1066136
        local.get 8
        i32.store
        i32.const 1066164
        i32.const 1066152
        i32.store
        i32.const 1066172
        i32.const 1066160
        i32.store
        i32.const 1066160
        i32.const 1066152
        i32.store
        i32.const 1066180
        i32.const 1066168
        i32.store
        i32.const 1066168
        i32.const 1066160
        i32.store
        i32.const 1066188
        i32.const 1066176
        i32.store
        i32.const 1066176
        i32.const 1066168
        i32.store
        i32.const 1066196
        i32.const 1066184
        i32.store
        i32.const 1066184
        i32.const 1066176
        i32.store
        i32.const 1066204
        i32.const 1066192
        i32.store
        i32.const 1066192
        i32.const 1066184
        i32.store
        i32.const 1066212
        i32.const 1066200
        i32.store
        i32.const 1066200
        i32.const 1066192
        i32.store
        i32.const 1066220
        i32.const 1066208
        i32.store
        i32.const 1066208
        i32.const 1066200
        i32.store
        i32.const 1066228
        i32.const 1066216
        i32.store
        i32.const 1066216
        i32.const 1066208
        i32.store
        i32.const 1066224
        i32.const 1066216
        i32.store
        i32.const 1066236
        i32.const 1066224
        i32.store
        i32.const 1066232
        i32.const 1066224
        i32.store
        i32.const 1066244
        i32.const 1066232
        i32.store
        i32.const 1066240
        i32.const 1066232
        i32.store
        i32.const 1066252
        i32.const 1066240
        i32.store
        i32.const 1066248
        i32.const 1066240
        i32.store
        i32.const 1066260
        i32.const 1066248
        i32.store
        i32.const 1066256
        i32.const 1066248
        i32.store
        i32.const 1066268
        i32.const 1066256
        i32.store
        i32.const 1066264
        i32.const 1066256
        i32.store
        i32.const 1066276
        i32.const 1066264
        i32.store
        i32.const 1066272
        i32.const 1066264
        i32.store
        i32.const 1066284
        i32.const 1066272
        i32.store
        i32.const 1066280
        i32.const 1066272
        i32.store
        i32.const 1066292
        i32.const 1066280
        i32.store
        i32.const 1066300
        i32.const 1066288
        i32.store
        i32.const 1066288
        i32.const 1066280
        i32.store
        i32.const 1066308
        i32.const 1066296
        i32.store
        i32.const 1066296
        i32.const 1066288
        i32.store
        i32.const 1066316
        i32.const 1066304
        i32.store
        i32.const 1066304
        i32.const 1066296
        i32.store
        i32.const 1066324
        i32.const 1066312
        i32.store
        i32.const 1066312
        i32.const 1066304
        i32.store
        i32.const 1066332
        i32.const 1066320
        i32.store
        i32.const 1066320
        i32.const 1066312
        i32.store
        i32.const 1066340
        i32.const 1066328
        i32.store
        i32.const 1066328
        i32.const 1066320
        i32.store
        i32.const 1066348
        i32.const 1066336
        i32.store
        i32.const 1066336
        i32.const 1066328
        i32.store
        i32.const 1066356
        i32.const 1066344
        i32.store
        i32.const 1066344
        i32.const 1066336
        i32.store
        i32.const 1066364
        i32.const 1066352
        i32.store
        i32.const 1066352
        i32.const 1066344
        i32.store
        i32.const 1066372
        i32.const 1066360
        i32.store
        i32.const 1066360
        i32.const 1066352
        i32.store
        i32.const 1066380
        i32.const 1066368
        i32.store
        i32.const 1066368
        i32.const 1066360
        i32.store
        i32.const 1066388
        i32.const 1066376
        i32.store
        i32.const 1066376
        i32.const 1066368
        i32.store
        i32.const 1066396
        i32.const 1066384
        i32.store
        i32.const 1066384
        i32.const 1066376
        i32.store
        i32.const 1066404
        i32.const 1066392
        i32.store
        i32.const 1066392
        i32.const 1066384
        i32.store
        i32.const 1066412
        i32.const 1066400
        i32.store
        i32.const 1066400
        i32.const 1066392
        i32.store
        i32.const 1066408
        i32.const 1066400
        i32.store
        i32.const 8
        i32.const 8
        call 55
        local.set 5
        i32.const 20
        i32.const 8
        call 55
        local.set 2
        i32.const 16
        i32.const 8
        call 55
        local.set 1
        i32.const 1066436
        local.get 8
        local.get 8
        call 80
        local.tee 0
        i32.const 8
        call 55
        local.get 0
        i32.sub
        local.tee 0
        call 78
        local.tee 3
        i32.store
        i32.const 1066428
        local.get 10
        i32.const 8
        i32.add
        local.get 1
        local.get 2
        local.get 5
        i32.add
        i32.add
        local.get 0
        i32.add
        i32.sub
        local.tee 5
        i32.store
        local.get 3
        local.get 5
        i32.const 1
        i32.or
        i32.store offset=4
        i32.const 8
        i32.const 8
        call 55
        local.set 2
        i32.const 20
        i32.const 8
        call 55
        local.set 1
        i32.const 16
        i32.const 8
        call 55
        local.set 0
        local.get 3
        local.get 5
        call 78
        local.get 0
        local.get 1
        local.get 2
        i32.const 8
        i32.sub
        i32.add
        i32.add
        i32.store offset=4
        i32.const 1066448
        i32.const 2097152
        i32.store
      end
      i32.const 0
      local.set 3
      i32.const 1066428
      i32.load
      local.tee 0
      local.get 4
      i32.le_u
      br_if 0 (;@1;)
      i32.const 1066428
      local.get 0
      local.get 4
      i32.sub
      local.tee 1
      i32.store
      i32.const 1066436
      i32.const 1066436
      i32.load
      local.tee 2
      local.get 4
      call 78
      local.tee 0
      i32.store
      local.get 0
      local.get 1
      i32.const 1
      i32.or
      i32.store offset=4
      local.get 2
      local.get 4
      call 64
      local.get 2
      call 80
      local.set 3
    end
    local.get 11
    i32.const 16
    i32.add
    global.set 0
    local.get 3)
  (func (;1;) (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 3
        i32.add
        i32.const -4
        i32.and
        local.tee 2
        local.get 0
        i32.sub
        local.tee 5
        local.get 1
        i32.gt_u
        local.get 5
        i32.const 4
        i32.gt_u
        i32.or
        br_if 0 (;@2;)
        local.get 1
        local.get 5
        i32.sub
        local.tee 7
        i32.const 4
        i32.lt_u
        br_if 0 (;@2;)
        local.get 7
        i32.const 3
        i32.and
        local.set 8
        i32.const 0
        local.set 1
        block  ;; label = @3
          local.get 0
          local.get 2
          i32.eq
          br_if 0 (;@3;)
          local.get 5
          i32.const 3
          i32.and
          local.set 3
          block  ;; label = @4
            local.get 2
            local.get 0
            i32.const -1
            i32.xor
            i32.add
            i32.const 3
            i32.lt_u
            if  ;; label = @5
              local.get 0
              local.set 2
              br 1 (;@4;)
            end
            local.get 5
            i32.const -4
            i32.and
            local.set 6
            local.get 0
            local.set 2
            loop  ;; label = @5
              local.get 1
              local.get 2
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.get 2
              i32.load8_s offset=1
              i32.const -65
              i32.gt_s
              i32.add
              local.get 2
              i32.load8_s offset=2
              i32.const -65
              i32.gt_s
              i32.add
              local.get 2
              i32.load8_s offset=3
              i32.const -65
              i32.gt_s
              i32.add
              local.set 1
              local.get 2
              i32.const 4
              i32.add
              local.set 2
              local.get 6
              i32.const -4
              i32.add
              local.tee 6
              br_if 0 (;@5;)
            end
          end
          local.get 3
          i32.eqz
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 1
            local.get 2
            i32.load8_s
            i32.const -65
            i32.gt_s
            i32.add
            local.set 1
            local.get 2
            i32.const 1
            i32.add
            local.set 2
            local.get 3
            i32.const -1
            i32.add
            local.tee 3
            br_if 0 (;@4;)
          end
        end
        local.get 0
        local.get 5
        i32.add
        local.set 0
        block  ;; label = @3
          local.get 8
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          local.get 7
          i32.const -4
          i32.and
          i32.add
          local.tee 2
          i32.load8_s
          i32.const -65
          i32.gt_s
          local.set 4
          local.get 8
          i32.const 1
          i32.eq
          br_if 0 (;@3;)
          local.get 4
          local.get 2
          i32.load8_s offset=1
          i32.const -65
          i32.gt_s
          i32.add
          local.set 4
          local.get 8
          i32.const 2
          i32.eq
          br_if 0 (;@3;)
          local.get 4
          local.get 2
          i32.load8_s offset=2
          i32.const -65
          i32.gt_s
          i32.add
          local.set 4
        end
        local.get 7
        i32.const 2
        i32.shr_u
        local.set 5
        local.get 1
        local.get 4
        i32.add
        local.set 3
        loop  ;; label = @3
          local.get 0
          local.set 1
          local.get 5
          i32.eqz
          br_if 2 (;@1;)
          local.get 5
          i32.const 192
          local.get 5
          i32.const 192
          i32.lt_u
          select
          local.tee 4
          i32.const 3
          i32.and
          local.set 6
          local.get 4
          i32.const 2
          i32.shl
          local.set 8
          block  ;; label = @4
            local.get 4
            i32.const 252
            i32.and
            local.tee 7
            i32.eqz
            if  ;; label = @5
              i32.const 0
              local.set 2
              br 1 (;@4;)
            end
            local.get 1
            local.get 7
            i32.const 2
            i32.shl
            i32.add
            local.set 9
            i32.const 0
            local.set 2
            loop  ;; label = @5
              local.get 0
              i32.eqz
              br_if 1 (;@4;)
              local.get 2
              local.get 0
              i32.load
              local.tee 2
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 2
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              i32.add
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.tee 2
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 2
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              i32.add
              local.get 0
              i32.const 8
              i32.add
              i32.load
              local.tee 2
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 2
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              i32.add
              local.get 0
              i32.const 12
              i32.add
              i32.load
              local.tee 2
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 2
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              i32.add
              local.set 2
              local.get 0
              i32.const 16
              i32.add
              local.tee 0
              local.get 9
              i32.ne
              br_if 0 (;@5;)
            end
          end
          local.get 5
          local.get 4
          i32.sub
          local.set 5
          local.get 1
          local.get 8
          i32.add
          local.set 0
          local.get 2
          i32.const 8
          i32.shr_u
          i32.const 16711935
          i32.and
          local.get 2
          i32.const 16711935
          i32.and
          i32.add
          i32.const 65537
          i32.mul
          i32.const 16
          i32.shr_u
          local.get 3
          i32.add
          local.set 3
          local.get 6
          i32.eqz
          br_if 0 (;@3;)
        end
        block  ;; label = @3
          local.get 1
          i32.eqz
          if  ;; label = @4
            i32.const 0
            local.set 2
            br 1 (;@3;)
          end
          local.get 1
          local.get 7
          i32.const 2
          i32.shl
          i32.add
          local.set 0
          local.get 6
          i32.const -1
          i32.add
          i32.const 1073741823
          i32.and
          local.tee 2
          i32.const 1
          i32.add
          local.tee 4
          i32.const 3
          i32.and
          local.set 1
          block  ;; label = @4
            local.get 2
            i32.const 3
            i32.lt_u
            if  ;; label = @5
              i32.const 0
              local.set 2
              br 1 (;@4;)
            end
            local.get 4
            i32.const 2147483644
            i32.and
            local.set 6
            i32.const 0
            local.set 2
            loop  ;; label = @5
              local.get 2
              local.get 0
              i32.load
              local.tee 2
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 2
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              i32.add
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.tee 2
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 2
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              i32.add
              local.get 0
              i32.const 8
              i32.add
              i32.load
              local.tee 2
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 2
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              i32.add
              local.get 0
              i32.const 12
              i32.add
              i32.load
              local.tee 2
              i32.const -1
              i32.xor
              i32.const 7
              i32.shr_u
              local.get 2
              i32.const 6
              i32.shr_u
              i32.or
              i32.const 16843009
              i32.and
              i32.add
              local.set 2
              local.get 0
              i32.const 16
              i32.add
              local.set 0
              local.get 6
              i32.const -4
              i32.add
              local.tee 6
              br_if 0 (;@5;)
            end
          end
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 2
            local.get 0
            i32.load
            local.tee 2
            i32.const -1
            i32.xor
            i32.const 7
            i32.shr_u
            local.get 2
            i32.const 6
            i32.shr_u
            i32.or
            i32.const 16843009
            i32.and
            i32.add
            local.set 2
            local.get 0
            i32.const 4
            i32.add
            local.set 0
            local.get 1
            i32.const -1
            i32.add
            local.tee 1
            br_if 0 (;@4;)
          end
        end
        local.get 2
        i32.const 8
        i32.shr_u
        i32.const 16711935
        i32.and
        local.get 2
        i32.const 16711935
        i32.and
        i32.add
        i32.const 65537
        i32.mul
        i32.const 16
        i32.shr_u
        local.get 3
        i32.add
        return
      end
      local.get 1
      i32.eqz
      if  ;; label = @2
        i32.const 0
        return
      end
      local.get 1
      i32.const 3
      i32.and
      local.set 2
      block  ;; label = @2
        local.get 1
        i32.const -1
        i32.add
        i32.const 3
        i32.lt_u
        if  ;; label = @3
          br 1 (;@2;)
        end
        local.get 1
        i32.const -4
        i32.and
        local.set 1
        loop  ;; label = @3
          local.get 3
          local.get 0
          i32.load8_s
          i32.const -65
          i32.gt_s
          i32.add
          local.get 0
          i32.load8_s offset=1
          i32.const -65
          i32.gt_s
          i32.add
          local.get 0
          i32.load8_s offset=2
          i32.const -65
          i32.gt_s
          i32.add
          local.get 0
          i32.load8_s offset=3
          i32.const -65
          i32.gt_s
          i32.add
          local.set 3
          local.get 0
          i32.const 4
          i32.add
          local.set 0
          local.get 1
          i32.const -4
          i32.add
          local.tee 1
          br_if 0 (;@3;)
        end
      end
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 3
        local.get 0
        i32.load8_s
        i32.const -65
        i32.gt_s
        i32.add
        local.set 3
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 2
        i32.const -1
        i32.add
        local.tee 2
        br_if 0 (;@2;)
      end
    end
    local.get 3)
  (func (;2;) (type 4) (param i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    call 81
    local.tee 0
    local.get 0
    call 70
    local.tee 2
    call 78
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          call 71
          br_if 0 (;@3;)
          local.get 0
          i32.load
          local.set 3
          block  ;; label = @4
            local.get 0
            call 63
            i32.eqz
            if  ;; label = @5
              local.get 2
              local.get 3
              i32.add
              local.set 2
              local.get 0
              local.get 3
              call 79
              local.tee 0
              i32.const 1066432
              i32.load
              i32.ne
              br_if 1 (;@4;)
              local.get 1
              i32.load offset=4
              i32.const 3
              i32.and
              i32.const 3
              i32.ne
              br_if 2 (;@3;)
              i32.const 1066424
              local.get 2
              i32.store
              local.get 0
              local.get 2
              local.get 1
              call 49
              return
            end
            local.get 2
            local.get 3
            i32.add
            i32.const 16
            i32.add
            local.set 0
            br 2 (;@2;)
          end
          local.get 3
          i32.const 256
          i32.ge_u
          if  ;; label = @4
            local.get 0
            call 16
            br 1 (;@3;)
          end
          local.get 0
          i32.const 12
          i32.add
          i32.load
          local.tee 4
          local.get 0
          i32.const 8
          i32.add
          i32.load
          local.tee 5
          i32.ne
          if  ;; label = @4
            local.get 5
            local.get 4
            i32.store offset=12
            local.get 4
            local.get 5
            i32.store offset=8
            br 1 (;@3;)
          end
          i32.const 1066416
          i32.const 1066416
          i32.load
          i32.const -2
          local.get 3
          i32.const 3
          i32.shr_u
          i32.rotl
          i32.and
          i32.store
        end
        block  ;; label = @3
          local.get 1
          call 60
          if  ;; label = @4
            local.get 0
            local.get 2
            local.get 1
            call 49
            br 1 (;@3;)
          end
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                i32.const 1066436
                i32.load
                local.get 1
                i32.ne
                if  ;; label = @7
                  local.get 1
                  i32.const 1066432
                  i32.load
                  i32.ne
                  br_if 1 (;@6;)
                  i32.const 1066432
                  local.get 0
                  i32.store
                  i32.const 1066424
                  i32.const 1066424
                  i32.load
                  local.get 2
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 0
                  local.get 1
                  call 54
                  return
                end
                i32.const 1066436
                local.get 0
                i32.store
                i32.const 1066428
                i32.const 1066428
                i32.load
                local.get 2
                i32.add
                local.tee 1
                i32.store
                local.get 0
                local.get 1
                i32.const 1
                i32.or
                i32.store offset=4
                local.get 0
                i32.const 1066432
                i32.load
                i32.eq
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
              local.get 1
              call 70
              local.tee 3
              local.get 2
              i32.add
              local.set 2
              block  ;; label = @6
                local.get 3
                i32.const 256
                i32.ge_u
                if  ;; label = @7
                  local.get 1
                  call 16
                  br 1 (;@6;)
                end
                local.get 1
                i32.const 12
                i32.add
                i32.load
                local.tee 4
                local.get 1
                i32.const 8
                i32.add
                i32.load
                local.tee 1
                i32.ne
                if  ;; label = @7
                  local.get 1
                  local.get 4
                  i32.store offset=12
                  local.get 4
                  local.get 1
                  i32.store offset=8
                  br 1 (;@6;)
                end
                i32.const 1066416
                i32.const 1066416
                i32.load
                i32.const -2
                local.get 3
                i32.const 3
                i32.shr_u
                i32.rotl
                i32.and
                i32.store
              end
              local.get 0
              local.get 2
              call 54
              local.get 0
              i32.const 1066432
              i32.load
              i32.ne
              br_if 2 (;@3;)
              i32.const 1066424
              local.get 2
              i32.store
              br 3 (;@2;)
            end
            i32.const 1066424
            i32.const 0
            i32.store
            i32.const 1066432
            i32.const 0
            i32.store
          end
          i32.const 1066448
          i32.load
          local.get 1
          i32.ge_u
          br_if 1 (;@2;)
          i32.const 8
          i32.const 8
          call 55
          local.set 0
          i32.const 20
          i32.const 8
          call 55
          local.set 1
          i32.const 16
          i32.const 8
          call 55
          local.set 3
          i32.const 0
          i32.const 16
          i32.const 8
          call 55
          i32.const 2
          i32.shl
          i32.sub
          local.tee 2
          i32.const -65536
          local.get 3
          local.get 0
          local.get 1
          i32.add
          i32.add
          i32.sub
          i32.const -9
          i32.and
          i32.const -3
          i32.add
          local.tee 0
          local.get 2
          local.get 0
          i32.lt_u
          select
          i32.eqz
          br_if 1 (;@2;)
          i32.const 1066436
          i32.load
          i32.eqz
          br_if 1 (;@2;)
          i32.const 8
          i32.const 8
          call 55
          local.set 0
          i32.const 20
          i32.const 8
          call 55
          local.set 1
          i32.const 16
          i32.const 8
          call 55
          local.set 2
          i32.const 0
          block  ;; label = @4
            i32.const 1066428
            i32.load
            local.tee 4
            local.get 2
            local.get 1
            local.get 0
            i32.const 8
            i32.sub
            i32.add
            i32.add
            local.tee 2
            i32.le_u
            br_if 0 (;@4;)
            i32.const 1066436
            i32.load
            local.set 1
            i32.const 1066136
            local.set 0
            block  ;; label = @5
              loop  ;; label = @6
                local.get 0
                i32.load
                local.get 1
                i32.le_u
                if  ;; label = @7
                  local.get 0
                  call 65
                  local.get 1
                  i32.gt_u
                  br_if 2 (;@5;)
                end
                local.get 0
                i32.load offset=8
                local.tee 0
                br_if 0 (;@6;)
              end
              i32.const 0
              local.set 0
            end
            local.get 0
            call 72
            br_if 0 (;@4;)
            local.get 0
            i32.const 12
            i32.add
            i32.load
            drop
            br 0 (;@4;)
          end
          i32.const 0
          call 17
          i32.sub
          i32.ne
          br_if 1 (;@2;)
          i32.const 1066428
          i32.load
          i32.const 1066448
          i32.load
          i32.le_u
          br_if 1 (;@2;)
          i32.const 1066448
          i32.const -1
          i32.store
          return
        end
        local.get 2
        i32.const 256
        i32.lt_u
        br_if 1 (;@1;)
        local.get 0
        local.get 2
        call 15
        i32.const 1066456
        i32.const 1066456
        i32.load
        i32.const -1
        i32.add
        local.tee 0
        i32.store
        local.get 0
        br_if 0 (;@2;)
        call 17
        drop
        return
      end
      return
    end
    local.get 2
    i32.const -8
    i32.and
    i32.const 1066152
    i32.add
    local.set 1
    block (result i32)  ;; label = @1
      i32.const 1066416
      i32.load
      local.tee 3
      i32.const 1
      local.get 2
      i32.const 3
      i32.shr_u
      i32.shl
      local.tee 2
      i32.and
      if  ;; label = @2
        local.get 1
        i32.load offset=8
        br 1 (;@1;)
      end
      i32.const 1066416
      local.get 2
      local.get 3
      i32.or
      i32.store
      local.get 1
    end
    local.set 3
    local.get 1
    local.get 0
    i32.store offset=8
    local.get 3
    local.get 0
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    local.get 3
    i32.store offset=8)
  (func (;3;) (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=8
        local.tee 10
        i32.const 1
        i32.ne
        i32.const 0
        local.get 0
        i32.load offset=16
        local.tee 3
        i32.const 1
        i32.ne
        select
        i32.eqz
        if  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.const 1
            i32.ne
            br_if 0 (;@4;)
            local.get 1
            local.get 2
            i32.add
            local.set 9
            local.get 0
            i32.const 20
            i32.add
            i32.load
            i32.const 1
            i32.add
            local.set 6
            local.get 1
            local.set 4
            loop  ;; label = @5
              block  ;; label = @6
                local.get 4
                local.set 3
                local.get 6
                i32.const -1
                i32.add
                local.tee 6
                i32.eqz
                br_if 0 (;@6;)
                local.get 3
                local.get 9
                i32.eq
                br_if 2 (;@4;)
                block (result i32)  ;; label = @7
                  local.get 3
                  i32.load8_s
                  local.tee 5
                  i32.const -1
                  i32.gt_s
                  if  ;; label = @8
                    local.get 5
                    i32.const 255
                    i32.and
                    local.set 5
                    local.get 3
                    i32.const 1
                    i32.add
                    br 1 (;@7;)
                  end
                  local.get 3
                  i32.load8_u offset=1
                  i32.const 63
                  i32.and
                  local.set 8
                  local.get 5
                  i32.const 31
                  i32.and
                  local.set 4
                  local.get 5
                  i32.const -33
                  i32.le_u
                  if  ;; label = @8
                    local.get 4
                    i32.const 6
                    i32.shl
                    local.get 8
                    i32.or
                    local.set 5
                    local.get 3
                    i32.const 2
                    i32.add
                    br 1 (;@7;)
                  end
                  local.get 3
                  i32.load8_u offset=2
                  i32.const 63
                  i32.and
                  local.get 8
                  i32.const 6
                  i32.shl
                  i32.or
                  local.set 8
                  local.get 5
                  i32.const -16
                  i32.lt_u
                  if  ;; label = @8
                    local.get 8
                    local.get 4
                    i32.const 12
                    i32.shl
                    i32.or
                    local.set 5
                    local.get 3
                    i32.const 3
                    i32.add
                    br 1 (;@7;)
                  end
                  local.get 4
                  i32.const 18
                  i32.shl
                  i32.const 1835008
                  i32.and
                  local.get 3
                  i32.load8_u offset=3
                  i32.const 63
                  i32.and
                  local.get 8
                  i32.const 6
                  i32.shl
                  i32.or
                  i32.or
                  local.tee 5
                  i32.const 1114112
                  i32.eq
                  br_if 3 (;@4;)
                  local.get 3
                  i32.const 4
                  i32.add
                end
                local.tee 4
                local.get 7
                local.get 3
                i32.sub
                i32.add
                local.set 7
                local.get 5
                i32.const 1114112
                i32.ne
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
            end
            local.get 3
            local.get 9
            i32.eq
            br_if 0 (;@4;)
            local.get 3
            i32.load8_s
            local.tee 4
            i32.const -1
            i32.gt_s
            local.get 4
            i32.const -32
            i32.lt_u
            i32.or
            local.get 4
            i32.const -16
            i32.lt_u
            i32.or
            i32.eqz
            if  ;; label = @5
              local.get 4
              i32.const 255
              i32.and
              i32.const 18
              i32.shl
              i32.const 1835008
              i32.and
              local.get 3
              i32.load8_u offset=3
              i32.const 63
              i32.and
              local.get 3
              i32.load8_u offset=2
              i32.const 63
              i32.and
              i32.const 6
              i32.shl
              local.get 3
              i32.load8_u offset=1
              i32.const 63
              i32.and
              i32.const 12
              i32.shl
              i32.or
              i32.or
              i32.or
              i32.const 1114112
              i32.eq
              br_if 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                local.get 7
                i32.eqz
                br_if 0 (;@6;)
                local.get 7
                local.get 2
                i32.ge_u
                if  ;; label = @7
                  i32.const 0
                  local.set 3
                  local.get 2
                  local.get 7
                  i32.eq
                  br_if 1 (;@6;)
                  br 2 (;@5;)
                end
                i32.const 0
                local.set 3
                local.get 1
                local.get 7
                i32.add
                i32.load8_s
                i32.const -64
                i32.lt_s
                br_if 1 (;@5;)
              end
              local.get 1
              local.set 3
            end
            local.get 7
            local.get 2
            local.get 3
            select
            local.set 2
            local.get 3
            local.get 1
            local.get 3
            select
            local.set 1
          end
          local.get 10
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 12
          i32.add
          i32.load
          local.set 7
          block  ;; label = @4
            local.get 2
            i32.const 16
            i32.ge_u
            if  ;; label = @5
              local.get 1
              local.get 2
              call 1
              local.set 4
              br 1 (;@4;)
            end
            local.get 2
            i32.eqz
            if  ;; label = @5
              i32.const 0
              local.set 4
              br 1 (;@4;)
            end
            local.get 2
            i32.const 3
            i32.and
            local.set 5
            block  ;; label = @5
              local.get 2
              i32.const -1
              i32.add
              i32.const 3
              i32.lt_u
              if  ;; label = @6
                i32.const 0
                local.set 4
                local.get 1
                local.set 3
                br 1 (;@5;)
              end
              local.get 2
              i32.const -4
              i32.and
              local.set 6
              i32.const 0
              local.set 4
              local.get 1
              local.set 3
              loop  ;; label = @6
                local.get 4
                local.get 3
                i32.load8_s
                i32.const -65
                i32.gt_s
                i32.add
                local.get 3
                i32.load8_s offset=1
                i32.const -65
                i32.gt_s
                i32.add
                local.get 3
                i32.load8_s offset=2
                i32.const -65
                i32.gt_s
                i32.add
                local.get 3
                i32.load8_s offset=3
                i32.const -65
                i32.gt_s
                i32.add
                local.set 4
                local.get 3
                i32.const 4
                i32.add
                local.set 3
                local.get 6
                i32.const -4
                i32.add
                local.tee 6
                br_if 0 (;@6;)
              end
            end
            local.get 5
            i32.eqz
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 4
              local.get 3
              i32.load8_s
              i32.const -65
              i32.gt_s
              i32.add
              local.set 4
              local.get 3
              i32.const 1
              i32.add
              local.set 3
              local.get 5
              i32.const -1
              i32.add
              local.tee 5
              br_if 0 (;@5;)
            end
          end
          local.get 7
          local.get 4
          i32.gt_u
          if  ;; label = @4
            local.get 7
            local.get 4
            i32.sub
            local.tee 4
            local.set 6
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  i32.const 0
                  local.get 0
                  i32.load8_u offset=32
                  local.tee 3
                  local.get 3
                  i32.const 3
                  i32.eq
                  select
                  i32.const 3
                  i32.and
                  local.tee 3
                  i32.const 1
                  i32.sub
                  br_table 0 (;@7;) 1 (;@6;) 2 (;@5;)
                end
                i32.const 0
                local.set 6
                local.get 4
                local.set 3
                br 1 (;@5;)
              end
              local.get 4
              i32.const 1
              i32.shr_u
              local.set 3
              local.get 4
              i32.const 1
              i32.add
              i32.const 1
              i32.shr_u
              local.set 6
            end
            local.get 3
            i32.const 1
            i32.add
            local.set 3
            local.get 0
            i32.const 4
            i32.add
            i32.load
            local.set 4
            local.get 0
            i32.load offset=28
            local.set 5
            local.get 0
            i32.load
            local.set 0
            block  ;; label = @5
              loop  ;; label = @6
                local.get 3
                i32.const -1
                i32.add
                local.tee 3
                i32.eqz
                br_if 1 (;@5;)
                local.get 0
                local.get 5
                local.get 4
                i32.load offset=16
                call_indirect (type 0)
                i32.eqz
                br_if 0 (;@6;)
              end
              i32.const 1
              return
            end
            i32.const 1
            local.set 3
            local.get 5
            i32.const 1114112
            i32.eq
            br_if 2 (;@2;)
            local.get 0
            local.get 1
            local.get 2
            local.get 4
            i32.load offset=12
            call_indirect (type 1)
            br_if 2 (;@2;)
            i32.const 0
            local.set 3
            loop  ;; label = @5
              local.get 3
              local.get 6
              i32.eq
              if  ;; label = @6
                i32.const 0
                return
              end
              local.get 3
              i32.const 1
              i32.add
              local.set 3
              local.get 0
              local.get 5
              local.get 4
              i32.load offset=16
              call_indirect (type 0)
              i32.eqz
              br_if 0 (;@5;)
            end
            local.get 3
            i32.const -1
            i32.add
            local.get 6
            i32.lt_u
            return
          end
          br 2 (;@1;)
        end
        local.get 0
        i32.load
        local.get 1
        local.get 2
        local.get 0
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 1)
        local.set 3
      end
      local.get 3
      return
    end
    local.get 0
    i32.load
    local.get 1
    local.get 2
    local.get 0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 1))
  (func (;4;) (type 9) (param i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 9
          i32.ge_u
          if  ;; label = @4
            local.get 3
            local.get 2
            call 9
            local.tee 2
            br_if 1 (;@3;)
            i32.const 0
            return
          end
          i32.const 8
          i32.const 8
          call 55
          local.set 1
          i32.const 20
          i32.const 8
          call 55
          local.set 5
          i32.const 16
          i32.const 8
          call 55
          local.set 4
          i32.const 0
          local.set 2
          i32.const 0
          i32.const 16
          i32.const 8
          call 55
          i32.const 2
          i32.shl
          i32.sub
          local.tee 6
          i32.const -65536
          local.get 4
          local.get 1
          local.get 5
          i32.add
          i32.add
          i32.sub
          i32.const -9
          i32.and
          i32.const -3
          i32.add
          local.tee 1
          local.get 6
          local.get 1
          i32.lt_u
          select
          local.get 3
          i32.le_u
          br_if 1 (;@2;)
          i32.const 16
          local.get 3
          i32.const 4
          i32.add
          i32.const 16
          i32.const 8
          call 55
          i32.const -5
          i32.add
          local.get 3
          i32.gt_u
          select
          i32.const 8
          call 55
          local.set 5
          local.get 0
          call 81
          local.tee 1
          local.get 1
          call 70
          local.tee 6
          call 78
          local.set 4
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        call 63
                        i32.eqz
                        if  ;; label = @11
                          local.get 6
                          local.get 5
                          i32.ge_u
                          br_if 1 (;@10;)
                          local.get 4
                          i32.const 1066436
                          i32.load
                          i32.eq
                          br_if 2 (;@9;)
                          local.get 4
                          i32.const 1066432
                          i32.load
                          i32.eq
                          br_if 3 (;@8;)
                          local.get 4
                          call 60
                          br_if 7 (;@4;)
                          local.get 4
                          call 70
                          local.tee 7
                          local.get 6
                          i32.add
                          local.tee 8
                          local.get 5
                          i32.lt_u
                          br_if 7 (;@4;)
                          local.get 8
                          local.get 5
                          i32.sub
                          local.set 6
                          local.get 7
                          i32.const 256
                          i32.lt_u
                          br_if 4 (;@7;)
                          local.get 4
                          call 16
                          br 5 (;@6;)
                        end
                        local.get 1
                        call 70
                        local.set 4
                        local.get 5
                        i32.const 256
                        i32.lt_u
                        br_if 6 (;@4;)
                        local.get 4
                        local.get 5
                        i32.const 4
                        i32.add
                        i32.ge_u
                        i32.const 0
                        local.get 4
                        local.get 5
                        i32.sub
                        i32.const 131073
                        i32.lt_u
                        select
                        br_if 5 (;@5;)
                        local.get 1
                        i32.load
                        local.tee 6
                        local.get 4
                        i32.add
                        i32.const 16
                        i32.add
                        local.set 7
                        local.get 5
                        i32.const 31
                        i32.add
                        i32.const 65536
                        call 55
                        local.set 4
                        i32.const 0
                        local.tee 5
                        i32.eqz
                        br_if 6 (;@4;)
                        local.get 5
                        local.get 6
                        i32.add
                        local.tee 1
                        local.get 4
                        local.get 6
                        i32.sub
                        local.tee 0
                        i32.const -16
                        i32.add
                        local.tee 2
                        i32.store offset=4
                        local.get 1
                        local.get 2
                        call 78
                        i32.const 7
                        i32.store offset=4
                        local.get 1
                        local.get 0
                        i32.const -12
                        i32.add
                        call 78
                        i32.const 0
                        i32.store offset=4
                        i32.const 1066440
                        i32.const 1066440
                        i32.load
                        local.get 4
                        local.get 7
                        i32.sub
                        i32.add
                        local.tee 0
                        i32.store
                        i32.const 1066452
                        i32.const 1066452
                        i32.load
                        local.tee 2
                        local.get 5
                        local.get 5
                        local.get 2
                        i32.gt_u
                        select
                        i32.store
                        i32.const 1066444
                        i32.const 1066444
                        i32.load
                        local.tee 2
                        local.get 0
                        local.get 2
                        local.get 0
                        i32.gt_u
                        select
                        i32.store
                        br 9 (;@1;)
                      end
                      local.get 6
                      local.get 5
                      i32.sub
                      local.tee 4
                      i32.const 16
                      i32.const 8
                      call 55
                      i32.lt_u
                      br_if 4 (;@5;)
                      local.get 1
                      local.get 5
                      call 78
                      local.set 6
                      local.get 1
                      local.get 5
                      call 47
                      local.get 6
                      local.get 4
                      call 47
                      local.get 6
                      local.get 4
                      call 7
                      br 4 (;@5;)
                    end
                    i32.const 1066428
                    i32.load
                    local.get 6
                    i32.add
                    local.tee 6
                    local.get 5
                    i32.le_u
                    br_if 4 (;@4;)
                    local.get 1
                    local.get 5
                    call 78
                    local.set 4
                    local.get 1
                    local.get 5
                    call 47
                    local.get 4
                    local.get 6
                    local.get 5
                    i32.sub
                    local.tee 5
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    i32.const 1066428
                    local.get 5
                    i32.store
                    i32.const 1066436
                    local.get 4
                    i32.store
                    br 3 (;@5;)
                  end
                  i32.const 1066424
                  i32.load
                  local.get 6
                  i32.add
                  local.tee 6
                  local.get 5
                  i32.lt_u
                  br_if 3 (;@4;)
                  block  ;; label = @8
                    local.get 6
                    local.get 5
                    i32.sub
                    local.tee 4
                    i32.const 16
                    i32.const 8
                    call 55
                    i32.lt_u
                    if  ;; label = @9
                      local.get 1
                      local.get 6
                      call 47
                      i32.const 0
                      local.set 4
                      i32.const 0
                      local.set 6
                      br 1 (;@8;)
                    end
                    local.get 1
                    local.get 5
                    call 78
                    local.tee 6
                    local.get 4
                    call 78
                    local.set 7
                    local.get 1
                    local.get 5
                    call 47
                    local.get 6
                    local.get 4
                    call 54
                    local.get 7
                    local.get 7
                    i32.load offset=4
                    i32.const -2
                    i32.and
                    i32.store offset=4
                  end
                  i32.const 1066432
                  local.get 6
                  i32.store
                  i32.const 1066424
                  local.get 4
                  i32.store
                  br 2 (;@5;)
                end
                local.get 4
                i32.const 12
                i32.add
                i32.load
                local.tee 9
                local.get 4
                i32.const 8
                i32.add
                i32.load
                local.tee 4
                i32.ne
                if  ;; label = @7
                  local.get 4
                  local.get 9
                  i32.store offset=12
                  local.get 9
                  local.get 4
                  i32.store offset=8
                  br 1 (;@6;)
                end
                i32.const 1066416
                i32.const 1066416
                i32.load
                i32.const -2
                local.get 7
                i32.const 3
                i32.shr_u
                i32.rotl
                i32.and
                i32.store
              end
              local.get 6
              i32.const 16
              i32.const 8
              call 55
              i32.ge_u
              if  ;; label = @6
                local.get 1
                local.get 5
                call 78
                local.set 4
                local.get 1
                local.get 5
                call 47
                local.get 4
                local.get 6
                call 47
                local.get 4
                local.get 6
                call 7
                br 1 (;@5;)
              end
              local.get 1
              local.get 8
              call 47
            end
            local.get 1
            br_if 3 (;@1;)
          end
          local.get 3
          call 0
          local.tee 5
          i32.eqz
          br_if 1 (;@2;)
          local.get 5
          local.get 0
          local.get 1
          call 70
          i32.const -8
          i32.const -4
          local.get 1
          call 63
          select
          i32.add
          local.tee 1
          local.get 3
          local.get 1
          local.get 3
          i32.lt_u
          select
          call 76
          local.get 0
          call 2
          return
        end
        local.get 2
        local.get 0
        local.get 1
        local.get 3
        local.get 1
        local.get 3
        i32.lt_u
        select
        call 76
        drop
        local.get 0
        call 2
      end
      local.get 2
      return
    end
    local.get 1
    call 63
    drop
    local.get 1
    call 80)
  (func (;5;) (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 43
    i32.const 1114112
    local.get 0
    i32.load offset=24
    local.tee 3
    i32.const 1
    i32.and
    local.tee 4
    select
    local.set 7
    local.get 2
    local.get 4
    i32.add
    local.set 9
    i32.const 1049076
    i32.const 0
    local.get 3
    i32.const 4
    i32.and
    select
    local.set 8
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load offset=8
        i32.eqz
        if  ;; label = @3
          i32.const 1
          local.set 3
          local.get 0
          i32.load
          local.tee 5
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.tee 0
          local.get 7
          local.get 8
          call 44
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                i32.const 12
                i32.add
                i32.load
                local.tee 10
                local.get 9
                i32.gt_u
                if  ;; label = @7
                  local.get 3
                  i32.const 8
                  i32.and
                  br_if 4 (;@3;)
                  local.get 10
                  local.get 9
                  i32.sub
                  local.tee 4
                  local.set 5
                  i32.const 1
                  local.get 0
                  i32.load8_u offset=32
                  local.tee 3
                  local.get 3
                  i32.const 3
                  i32.eq
                  select
                  i32.const 3
                  i32.and
                  local.tee 3
                  i32.const 1
                  i32.sub
                  br_table 1 (;@6;) 2 (;@5;) 3 (;@4;)
                end
                i32.const 1
                local.set 3
                local.get 0
                i32.load
                local.tee 5
                local.get 0
                i32.const 4
                i32.add
                i32.load
                local.tee 0
                local.get 7
                local.get 8
                call 44
                br_if 4 (;@2;)
                br 5 (;@1;)
              end
              i32.const 0
              local.set 5
              local.get 4
              local.set 3
              br 1 (;@4;)
            end
            local.get 4
            i32.const 1
            i32.shr_u
            local.set 3
            local.get 4
            i32.const 1
            i32.add
            i32.const 1
            i32.shr_u
            local.set 5
          end
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          local.get 0
          i32.const 4
          i32.add
          i32.load
          local.set 6
          local.get 0
          i32.load offset=28
          local.set 4
          local.get 0
          i32.load
          local.set 0
          block  ;; label = @4
            loop  ;; label = @5
              local.get 3
              i32.const -1
              i32.add
              local.tee 3
              i32.eqz
              br_if 1 (;@4;)
              local.get 0
              local.get 4
              local.get 6
              i32.load offset=16
              call_indirect (type 0)
              i32.eqz
              br_if 0 (;@5;)
            end
            i32.const 1
            return
          end
          i32.const 1
          local.set 3
          local.get 4
          i32.const 1114112
          i32.eq
          br_if 1 (;@2;)
          local.get 0
          local.get 6
          local.get 7
          local.get 8
          call 44
          br_if 1 (;@2;)
          local.get 0
          local.get 1
          local.get 2
          local.get 6
          i32.load offset=12
          call_indirect (type 1)
          br_if 1 (;@2;)
          i32.const 0
          local.set 3
          block (result i32)  ;; label = @4
            loop  ;; label = @5
              local.get 5
              local.get 3
              local.get 5
              i32.eq
              br_if 1 (;@4;)
              drop
              local.get 3
              i32.const 1
              i32.add
              local.set 3
              local.get 0
              local.get 4
              local.get 6
              i32.load offset=16
              call_indirect (type 0)
              i32.eqz
              br_if 0 (;@5;)
            end
            local.get 3
            i32.const -1
            i32.add
          end
          local.get 5
          i32.lt_u
          local.set 3
          br 1 (;@2;)
        end
        local.get 0
        i32.load offset=28
        local.set 6
        local.get 0
        i32.const 48
        i32.store offset=28
        local.get 0
        i32.load8_u offset=32
        local.set 4
        i32.const 1
        local.set 3
        local.get 0
        i32.const 1
        i32.store8 offset=32
        local.get 0
        i32.load
        local.tee 11
        local.get 0
        i32.const 4
        i32.add
        i32.load
        local.tee 5
        local.get 7
        local.get 8
        call 44
        br_if 0 (;@2;)
        local.get 10
        local.get 9
        i32.sub
        i32.const 1
        i32.add
        local.set 3
        block  ;; label = @3
          loop  ;; label = @4
            local.get 3
            i32.const -1
            i32.add
            local.tee 3
            i32.eqz
            br_if 1 (;@3;)
            local.get 11
            i32.const 48
            local.get 5
            i32.load offset=16
            call_indirect (type 0)
            i32.eqz
            br_if 0 (;@4;)
          end
          i32.const 1
          return
        end
        i32.const 1
        local.set 3
        local.get 11
        local.get 1
        local.get 2
        local.get 5
        i32.load offset=12
        call_indirect (type 1)
        br_if 0 (;@2;)
        local.get 0
        local.get 4
        i32.store8 offset=32
        local.get 0
        local.get 6
        i32.store offset=28
        i32.const 0
        return
      end
      local.get 3
      return
    end
    local.get 5
    local.get 1
    local.get 2
    local.get 0
    i32.load offset=12
    call_indirect (type 1))
  (func (;6;) (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i32.const 3
    i32.store8 offset=40
    local.get 3
    i64.const 137438953472
    i64.store offset=32
    local.get 3
    i32.const 0
    i32.store offset=24
    local.get 3
    i32.const 0
    i32.store offset=16
    local.get 3
    local.get 1
    i32.store offset=12
    local.get 3
    local.get 0
    i32.store offset=8
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.load
          local.tee 10
          i32.eqz
          if  ;; label = @4
            local.get 2
            i32.const 20
            i32.add
            i32.load
            local.tee 0
            i32.eqz
            br_if 1 (;@3;)
            local.get 2
            i32.load offset=16
            local.set 1
            local.get 0
            i32.const 3
            i32.shl
            local.set 5
            local.get 0
            i32.const -1
            i32.add
            i32.const 536870911
            i32.and
            i32.const 1
            i32.add
            local.set 7
            local.get 2
            i32.load offset=8
            local.set 0
            loop  ;; label = @5
              local.get 0
              i32.const 4
              i32.add
              i32.load
              local.tee 4
              if  ;; label = @6
                local.get 3
                i32.load offset=8
                local.get 0
                i32.load
                local.get 4
                local.get 3
                i32.load offset=12
                i32.load offset=12
                call_indirect (type 1)
                br_if 4 (;@2;)
              end
              local.get 1
              i32.load
              local.get 3
              i32.const 8
              i32.add
              local.get 1
              i32.const 4
              i32.add
              i32.load
              call_indirect (type 0)
              br_if 3 (;@2;)
              local.get 1
              i32.const 8
              i32.add
              local.set 1
              local.get 0
              i32.const 8
              i32.add
              local.set 0
              local.get 5
              i32.const -8
              i32.add
              local.tee 5
              br_if 0 (;@5;)
            end
            br 1 (;@3;)
          end
          local.get 2
          i32.load offset=4
          local.tee 0
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.const 5
          i32.shl
          local.set 11
          local.get 0
          i32.const -1
          i32.add
          i32.const 134217727
          i32.and
          i32.const 1
          i32.add
          local.set 7
          local.get 2
          i32.load offset=8
          local.set 0
          loop  ;; label = @4
            local.get 0
            i32.const 4
            i32.add
            i32.load
            local.tee 1
            if  ;; label = @5
              local.get 3
              i32.load offset=8
              local.get 0
              i32.load
              local.get 1
              local.get 3
              i32.load offset=12
              i32.load offset=12
              call_indirect (type 1)
              br_if 3 (;@2;)
            end
            local.get 3
            local.get 5
            local.get 10
            i32.add
            local.tee 4
            i32.const 28
            i32.add
            i32.load8_u
            i32.store8 offset=40
            local.get 3
            local.get 4
            i32.const 20
            i32.add
            i64.load align=4
            i64.store offset=32
            local.get 4
            i32.const 16
            i32.add
            i32.load
            local.set 6
            local.get 2
            i32.load offset=16
            local.set 8
            i32.const 0
            local.set 9
            i32.const 0
            local.set 1
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 4
                  i32.const 12
                  i32.add
                  i32.load
                  i32.const 1
                  i32.sub
                  br_table 0 (;@7;) 2 (;@5;) 1 (;@6;)
                end
                local.get 6
                i32.const 3
                i32.shl
                local.get 8
                i32.add
                local.tee 12
                i32.const 4
                i32.add
                i32.load
                i32.const 18
                i32.ne
                br_if 1 (;@5;)
                local.get 12
                i32.load
                i32.load
                local.set 6
              end
              i32.const 1
              local.set 1
            end
            local.get 3
            local.get 6
            i32.store offset=20
            local.get 3
            local.get 1
            i32.store offset=16
            local.get 4
            i32.const 8
            i32.add
            i32.load
            local.set 1
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 4
                  i32.const 4
                  i32.add
                  i32.load
                  i32.const 1
                  i32.sub
                  br_table 0 (;@7;) 2 (;@5;) 1 (;@6;)
                end
                local.get 1
                i32.const 3
                i32.shl
                local.get 8
                i32.add
                local.tee 6
                i32.const 4
                i32.add
                i32.load
                i32.const 18
                i32.ne
                br_if 1 (;@5;)
                local.get 6
                i32.load
                i32.load
                local.set 1
              end
              i32.const 1
              local.set 9
            end
            local.get 3
            local.get 1
            i32.store offset=28
            local.get 3
            local.get 9
            i32.store offset=24
            local.get 8
            local.get 4
            i32.load
            i32.const 3
            i32.shl
            i32.add
            local.tee 1
            i32.load
            local.get 3
            i32.const 8
            i32.add
            local.get 1
            i32.load offset=4
            call_indirect (type 0)
            br_if 2 (;@2;)
            local.get 0
            i32.const 8
            i32.add
            local.set 0
            local.get 11
            local.get 5
            i32.const 32
            i32.add
            local.tee 5
            i32.ne
            br_if 0 (;@4;)
          end
        end
        local.get 7
        local.get 2
        i32.const 12
        i32.add
        i32.load
        i32.lt_u
        if  ;; label = @3
          local.get 3
          i32.load offset=8
          local.get 2
          i32.load offset=8
          local.get 7
          i32.const 3
          i32.shl
          i32.add
          local.tee 0
          i32.load
          local.get 0
          i32.load offset=4
          local.get 3
          i32.load offset=12
          i32.load offset=12
          call_indirect (type 1)
          br_if 1 (;@2;)
        end
        i32.const 0
        br 1 (;@1;)
      end
      i32.const 1
    end
    local.get 3
    i32.const 48
    i32.add
    global.set 0)
  (func (;7;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32)
    local.get 0
    local.get 1
    call 78
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          call 71
          br_if 0 (;@3;)
          local.get 0
          i32.load
          local.set 3
          block  ;; label = @4
            local.get 0
            call 63
            i32.eqz
            if  ;; label = @5
              local.get 1
              local.get 3
              i32.add
              local.set 1
              local.get 0
              local.get 3
              call 79
              local.tee 0
              i32.const 1066432
              i32.load
              i32.ne
              br_if 1 (;@4;)
              local.get 2
              i32.load offset=4
              i32.const 3
              i32.and
              i32.const 3
              i32.ne
              br_if 2 (;@3;)
              i32.const 1066424
              local.get 1
              i32.store
              local.get 0
              local.get 1
              local.get 2
              call 49
              return
            end
            local.get 1
            local.get 3
            i32.add
            i32.const 16
            i32.add
            local.set 0
            br 2 (;@2;)
          end
          local.get 3
          i32.const 256
          i32.ge_u
          if  ;; label = @4
            local.get 0
            call 16
            br 1 (;@3;)
          end
          local.get 0
          i32.const 12
          i32.add
          i32.load
          local.tee 4
          local.get 0
          i32.const 8
          i32.add
          i32.load
          local.tee 5
          i32.ne
          if  ;; label = @4
            local.get 5
            local.get 4
            i32.store offset=12
            local.get 4
            local.get 5
            i32.store offset=8
            br 1 (;@3;)
          end
          i32.const 1066416
          i32.const 1066416
          i32.load
          i32.const -2
          local.get 3
          i32.const 3
          i32.shr_u
          i32.rotl
          i32.and
          i32.store
        end
        local.get 2
        call 60
        if  ;; label = @3
          local.get 0
          local.get 1
          local.get 2
          call 49
          br 2 (;@1;)
        end
        block  ;; label = @3
          i32.const 1066436
          i32.load
          local.get 2
          i32.ne
          if  ;; label = @4
            local.get 2
            i32.const 1066432
            i32.load
            i32.ne
            br_if 1 (;@3;)
            i32.const 1066432
            local.get 0
            i32.store
            i32.const 1066424
            i32.const 1066424
            i32.load
            local.get 1
            i32.add
            local.tee 1
            i32.store
            local.get 0
            local.get 1
            call 54
            return
          end
          i32.const 1066436
          local.get 0
          i32.store
          i32.const 1066428
          i32.const 1066428
          i32.load
          local.get 1
          i32.add
          local.tee 1
          i32.store
          local.get 0
          local.get 1
          i32.const 1
          i32.or
          i32.store offset=4
          local.get 0
          i32.const 1066432
          i32.load
          i32.ne
          br_if 1 (;@2;)
          i32.const 1066424
          i32.const 0
          i32.store
          i32.const 1066432
          i32.const 0
          i32.store
          return
        end
        local.get 2
        call 70
        local.tee 3
        local.get 1
        i32.add
        local.set 1
        block  ;; label = @3
          local.get 3
          i32.const 256
          i32.ge_u
          if  ;; label = @4
            local.get 2
            call 16
            br 1 (;@3;)
          end
          local.get 2
          i32.const 12
          i32.add
          i32.load
          local.tee 4
          local.get 2
          i32.const 8
          i32.add
          i32.load
          local.tee 2
          i32.ne
          if  ;; label = @4
            local.get 2
            local.get 4
            i32.store offset=12
            local.get 4
            local.get 2
            i32.store offset=8
            br 1 (;@3;)
          end
          i32.const 1066416
          i32.const 1066416
          i32.load
          i32.const -2
          local.get 3
          i32.const 3
          i32.shr_u
          i32.rotl
          i32.and
          i32.store
        end
        local.get 0
        local.get 1
        call 54
        local.get 0
        i32.const 1066432
        i32.load
        i32.ne
        br_if 1 (;@1;)
        i32.const 1066424
        local.get 1
        i32.store
      end
      return
    end
    local.get 1
    i32.const 256
    i32.ge_u
    if  ;; label = @1
      local.get 0
      local.get 1
      call 15
      return
    end
    local.get 1
    i32.const -8
    i32.and
    i32.const 1066152
    i32.add
    local.set 2
    block (result i32)  ;; label = @1
      i32.const 1066416
      i32.load
      local.tee 3
      i32.const 1
      local.get 1
      i32.const 3
      i32.shr_u
      i32.shl
      local.tee 1
      i32.and
      if  ;; label = @2
        local.get 2
        i32.load offset=8
        br 1 (;@1;)
      end
      i32.const 1066416
      local.get 1
      local.get 3
      i32.or
      i32.store
      local.get 2
    end
    local.set 1
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 1
    local.get 0
    i32.store offset=12
    local.get 0
    local.get 2
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store offset=8)
  (func (;8;) (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    i64.const 42949672961
    i64.store offset=32
    local.get 3
    local.get 2
    i32.store offset=28
    local.get 3
    i32.const 0
    i32.store offset=24
    local.get 3
    local.get 2
    i32.store offset=20
    local.get 3
    local.get 1
    i32.store offset=16
    local.get 3
    local.get 2
    i32.store offset=12
    local.get 3
    i32.const 0
    i32.store offset=8
    local.get 0
    i32.load offset=4
    local.set 8
    local.get 0
    i32.load
    local.set 9
    local.get 0
    i32.load offset=8
    local.set 10
    block (result i32)  ;; label = @1
      loop  ;; label = @2
        block  ;; label = @3
          local.get 6
          i32.eqz
          if  ;; label = @4
            block  ;; label = @5
              local.get 4
              local.get 2
              i32.gt_u
              br_if 0 (;@5;)
              loop  ;; label = @6
                local.get 1
                local.get 4
                i32.add
                local.set 6
                block (result i32)  ;; label = @7
                  local.get 2
                  local.get 4
                  i32.sub
                  local.tee 5
                  i32.const 8
                  i32.ge_u
                  if  ;; label = @8
                    local.get 3
                    local.get 6
                    local.get 5
                    call 13
                    local.get 3
                    i32.load offset=4
                    local.set 0
                    local.get 3
                    i32.load
                    br 1 (;@7;)
                  end
                  i32.const 0
                  local.set 0
                  i32.const 0
                  local.get 5
                  i32.eqz
                  br_if 0 (;@7;)
                  drop
                  loop  ;; label = @8
                    i32.const 1
                    local.get 0
                    local.get 6
                    i32.add
                    i32.load8_u
                    i32.const 10
                    i32.eq
                    br_if 1 (;@7;)
                    drop
                    local.get 5
                    local.get 0
                    i32.const 1
                    i32.add
                    local.tee 0
                    i32.ne
                    br_if 0 (;@8;)
                  end
                  local.get 5
                  local.set 0
                  i32.const 0
                end
                i32.const 1
                i32.ne
                if  ;; label = @7
                  local.get 2
                  local.set 4
                  br 2 (;@5;)
                end
                block  ;; label = @7
                  local.get 0
                  local.get 4
                  i32.add
                  local.tee 0
                  i32.const 1
                  i32.add
                  local.tee 4
                  i32.eqz
                  local.get 4
                  local.get 2
                  i32.gt_u
                  i32.or
                  br_if 0 (;@7;)
                  local.get 0
                  local.get 1
                  i32.add
                  i32.load8_u
                  i32.const 10
                  i32.ne
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 6
                  local.get 4
                  local.set 5
                  local.get 4
                  local.set 0
                  br 4 (;@3;)
                end
                local.get 4
                local.get 2
                i32.le_u
                br_if 0 (;@6;)
              end
            end
            i32.const 1
            local.set 6
            local.get 2
            local.tee 0
            local.get 7
            local.tee 5
            i32.ne
            br_if 1 (;@3;)
          end
          i32.const 0
          br 2 (;@1;)
        end
        block  ;; label = @3
          local.get 10
          i32.load8_u
          if  ;; label = @4
            local.get 9
            i32.const 1049140
            i32.const 4
            local.get 8
            i32.load offset=12
            call_indirect (type 1)
            br_if 1 (;@3;)
          end
          local.get 1
          local.get 7
          i32.add
          local.set 11
          local.get 0
          local.get 7
          i32.sub
          local.set 12
          local.get 10
          local.get 0
          local.get 7
          i32.ne
          if (result i32)  ;; label = @4
            local.get 11
            local.get 12
            i32.add
            i32.const -1
            i32.add
            i32.load8_u
            i32.const 10
            i32.eq
          else
            local.get 13
          end
          i32.store8
          local.get 5
          local.set 7
          local.get 9
          local.get 11
          local.get 12
          local.get 8
          i32.load offset=12
          call_indirect (type 1)
          i32.eqz
          br_if 1 (;@2;)
        end
      end
      i32.const 1
    end
    local.get 3
    i32.const 48
    i32.add
    global.set 0)
  (func (;9;) (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 9
            i32.ge_u
            if  ;; label = @5
              i32.const 16
              i32.const 8
              call 55
              local.get 1
              i32.gt_u
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            local.get 0
            call 0
            local.set 4
            br 2 (;@2;)
          end
          i32.const 16
          i32.const 8
          call 55
          local.set 1
        end
        i32.const 8
        i32.const 8
        call 55
        local.set 3
        i32.const 20
        i32.const 8
        call 55
        local.set 2
        i32.const 16
        i32.const 8
        call 55
        local.set 5
        i32.const 0
        i32.const 16
        i32.const 8
        call 55
        i32.const 2
        i32.shl
        i32.sub
        local.tee 6
        i32.const -65536
        local.get 5
        local.get 2
        local.get 3
        i32.add
        i32.add
        i32.sub
        i32.const -9
        i32.and
        i32.const -3
        i32.add
        local.tee 3
        local.get 6
        local.get 3
        i32.lt_u
        select
        local.get 1
        i32.sub
        local.get 0
        i32.le_u
        br_if 0 (;@2;)
        local.get 1
        i32.const 16
        local.get 0
        i32.const 4
        i32.add
        i32.const 16
        i32.const 8
        call 55
        i32.const -5
        i32.add
        local.get 0
        i32.gt_u
        select
        i32.const 8
        call 55
        local.tee 3
        i32.add
        i32.const 16
        i32.const 8
        call 55
        i32.add
        i32.const -4
        i32.add
        call 0
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        call 81
        local.set 0
        block  ;; label = @3
          local.get 1
          i32.const -1
          i32.add
          local.tee 4
          local.get 2
          i32.and
          i32.eqz
          if  ;; label = @4
            local.get 0
            local.set 1
            br 1 (;@3;)
          end
          local.get 2
          local.get 4
          i32.add
          i32.const 0
          local.get 1
          i32.sub
          i32.and
          call 81
          local.set 2
          i32.const 16
          i32.const 8
          call 55
          local.set 4
          local.get 0
          call 70
          local.get 2
          i32.const 0
          local.get 1
          local.get 2
          local.get 0
          i32.sub
          local.get 4
          i32.gt_u
          select
          i32.add
          local.tee 1
          local.get 0
          i32.sub
          local.tee 2
          i32.sub
          local.set 4
          local.get 0
          call 63
          i32.eqz
          if  ;; label = @4
            local.get 1
            local.get 4
            call 47
            local.get 0
            local.get 2
            call 47
            local.get 0
            local.get 2
            call 7
            br 1 (;@3;)
          end
          local.get 0
          i32.load
          local.set 0
          local.get 1
          local.get 4
          i32.store offset=4
          local.get 1
          local.get 0
          local.get 2
          i32.add
          i32.store
        end
        local.get 1
        call 63
        br_if 1 (;@1;)
        local.get 1
        call 70
        local.tee 2
        i32.const 16
        i32.const 8
        call 55
        local.get 3
        i32.add
        i32.le_u
        br_if 1 (;@1;)
        local.get 1
        local.get 3
        call 78
        local.set 0
        local.get 1
        local.get 3
        call 47
        local.get 0
        local.get 2
        local.get 3
        i32.sub
        local.tee 3
        call 47
        local.get 0
        local.get 3
        call 7
        br 1 (;@1;)
      end
      local.get 4
      return
    end
    local.get 1
    call 80
    local.get 1
    call 63
    drop)
  (func (;10;) (type 0) (param i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.set 0
    block  ;; label = @1
      block (result i32)  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 128
          i32.ge_u
          if  ;; label = @4
            local.get 2
            i32.const 0
            i32.store offset=12
            local.get 1
            i32.const 2048
            i32.ge_u
            br_if 1 (;@3;)
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 192
            i32.or
            i32.store8 offset=12
            i32.const 2
            br 2 (;@2;)
          end
          local.get 0
          i32.load offset=8
          local.tee 3
          local.get 0
          i32.load
          i32.eq
          if  ;; label = @4
            local.get 0
            local.get 3
            call 23
            local.get 0
            i32.load offset=8
            local.set 3
          end
          local.get 0
          local.get 3
          i32.const 1
          i32.add
          i32.store offset=8
          local.get 0
          i32.load offset=4
          local.get 3
          i32.add
          local.get 1
          i32.store8
          br 2 (;@1;)
        end
        local.get 1
        i32.const 65536
        i32.ge_u
        if  ;; label = @3
          local.get 2
          local.get 1
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=15
          local.get 2
          local.get 1
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=14
          local.get 2
          local.get 1
          i32.const 12
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=13
          local.get 2
          local.get 1
          i32.const 18
          i32.shr_u
          i32.const 7
          i32.and
          i32.const 240
          i32.or
          i32.store8 offset=12
          i32.const 4
          br 1 (;@2;)
        end
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=14
        local.get 2
        local.get 1
        i32.const 12
        i32.shr_u
        i32.const 224
        i32.or
        i32.store8 offset=12
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        i32.const 3
      end
      local.set 1
      local.get 0
      i32.load
      local.get 0
      i32.load offset=8
      local.tee 3
      i32.sub
      local.get 1
      i32.lt_u
      if  ;; label = @2
        local.get 0
        local.get 3
        local.get 1
        call 22
        local.get 0
        i32.load offset=8
        local.set 3
      end
      local.get 0
      i32.load offset=4
      local.get 3
      i32.add
      local.get 2
      i32.const 12
      i32.add
      local.get 1
      call 76
      drop
      local.get 0
      local.get 1
      local.get 3
      i32.add
      i32.store offset=8
    end
    local.get 2
    i32.const 16
    i32.add
    global.set 0
    i32.const 0)
  (func (;11;) (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 2
      i32.const 15
      i32.le_u
      if  ;; label = @2
        local.get 0
        local.set 3
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 6
      i32.add
      local.set 4
      local.get 6
      if  ;; label = @2
        local.get 0
        local.set 3
        local.get 1
        local.set 5
        loop  ;; label = @3
          local.get 3
          local.get 5
          i32.load8_u
          i32.store8
          local.get 5
          i32.const 1
          i32.add
          local.set 5
          local.get 3
          i32.const 1
          i32.add
          local.tee 3
          local.get 4
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 4
      local.get 2
      local.get 6
      i32.sub
      local.tee 8
      i32.const -4
      i32.and
      local.tee 7
      i32.add
      local.set 3
      block  ;; label = @2
        local.get 1
        local.get 6
        i32.add
        local.tee 6
        i32.const 3
        i32.and
        local.tee 2
        if  ;; label = @3
          local.get 7
          i32.const 1
          i32.lt_s
          br_if 1 (;@2;)
          local.get 6
          i32.const -4
          i32.and
          local.tee 5
          i32.const 4
          i32.add
          local.set 1
          i32.const 0
          local.get 2
          i32.const 3
          i32.shl
          local.tee 9
          i32.sub
          i32.const 24
          i32.and
          local.set 2
          local.get 5
          i32.load
          local.set 5
          loop  ;; label = @4
            local.get 4
            local.get 5
            local.get 9
            i32.shr_u
            local.get 1
            i32.load
            local.tee 5
            local.get 2
            i32.shl
            i32.or
            i32.store
            local.get 1
            i32.const 4
            i32.add
            local.set 1
            local.get 4
            i32.const 4
            i32.add
            local.tee 4
            local.get 3
            i32.lt_u
            br_if 0 (;@4;)
          end
          br 1 (;@2;)
        end
        local.get 7
        i32.const 1
        i32.lt_s
        br_if 0 (;@2;)
        local.get 6
        local.set 1
        loop  ;; label = @3
          local.get 4
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 4
          i32.const 4
          i32.add
          local.tee 4
          local.get 3
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      local.get 8
      i32.const 3
      i32.and
      local.set 2
      local.get 6
      local.get 7
      i32.add
      local.set 1
    end
    local.get 2
    if  ;; label = @1
      local.get 2
      local.get 3
      i32.add
      local.set 2
      loop  ;; label = @2
        local.get 3
        local.get 1
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 3
        i32.const 1
        i32.add
        local.tee 3
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    local.get 0)
  (func (;12;) (type 12) (param i64 i32) (result i32)
    (local i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 4
    global.set 0
    i32.const 39
    local.set 2
    block  ;; label = @1
      local.get 0
      i64.const 10000
      i64.lt_u
      if  ;; label = @2
        local.get 0
        local.set 7
        br 1 (;@1;)
      end
      loop  ;; label = @2
        local.get 4
        i32.const 9
        i32.add
        local.get 2
        i32.add
        local.tee 3
        i32.const -4
        i32.add
        local.get 0
        local.get 0
        i64.const 10000
        i64.div_u
        local.tee 7
        i64.const 10000
        i64.mul
        i64.sub
        i32.wrap_i64
        local.tee 5
        i32.const 65535
        i32.and
        i32.const 100
        i32.div_u
        local.tee 6
        i32.const 1
        i32.shl
        i32.const 1049152
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 3
        i32.const -2
        i32.add
        local.get 5
        local.get 6
        i32.const 100
        i32.mul
        i32.sub
        i32.const 65535
        i32.and
        i32.const 1
        i32.shl
        i32.const 1049152
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        local.get 2
        i32.const -4
        i32.add
        local.set 2
        local.get 0
        i64.const 99999999
        i64.gt_u
        local.get 7
        local.set 0
        br_if 0 (;@2;)
      end
    end
    local.get 7
    i32.wrap_i64
    local.tee 3
    i32.const 99
    i32.gt_u
    if  ;; label = @1
      local.get 2
      i32.const -2
      i32.add
      local.tee 2
      local.get 4
      i32.const 9
      i32.add
      i32.add
      local.get 7
      i32.wrap_i64
      local.tee 3
      local.get 3
      i32.const 65535
      i32.and
      i32.const 100
      i32.div_u
      local.tee 3
      i32.const 100
      i32.mul
      i32.sub
      i32.const 65535
      i32.and
      i32.const 1
      i32.shl
      i32.const 1049152
      i32.add
      i32.load16_u align=1
      i32.store16 align=1
    end
    block  ;; label = @1
      local.get 3
      i32.const 10
      i32.ge_u
      if  ;; label = @2
        local.get 2
        i32.const -2
        i32.add
        local.tee 2
        local.get 4
        i32.const 9
        i32.add
        i32.add
        local.get 3
        i32.const 1
        i32.shl
        i32.const 1049152
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        br 1 (;@1;)
      end
      local.get 2
      i32.const -1
      i32.add
      local.tee 2
      local.get 4
      i32.const 9
      i32.add
      i32.add
      local.get 3
      i32.const 48
      i32.add
      i32.store8
    end
    local.get 1
    local.get 4
    i32.const 9
    i32.add
    local.get 2
    i32.add
    i32.const 39
    local.get 2
    i32.sub
    call 5
    local.get 4
    i32.const 48
    i32.add
    global.set 0)
  (func (;13;) (type 6) (param i32 i32 i32)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 3
            i32.add
            i32.const -4
            i32.and
            local.tee 3
            local.get 1
            i32.eq
            br_if 0 (;@4;)
            local.get 3
            local.get 1
            i32.sub
            local.tee 3
            local.get 2
            local.get 3
            local.get 2
            i32.lt_u
            select
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            i32.const 0
            local.set 3
            i32.const 1
            local.set 5
            loop  ;; label = @5
              local.get 1
              local.get 3
              i32.add
              i32.load8_u
              i32.const 10
              i32.eq
              br_if 4 (;@1;)
              local.get 4
              local.get 3
              i32.const 1
              i32.add
              local.tee 3
              i32.ne
              br_if 0 (;@5;)
            end
            local.get 4
            local.get 2
            i32.const -8
            i32.add
            local.tee 3
            i32.gt_u
            br_if 2 (;@2;)
            br 1 (;@3;)
          end
          local.get 2
          i32.const -8
          i32.add
          local.set 3
          i32.const 0
          local.set 4
        end
        loop  ;; label = @3
          block  ;; label = @4
            local.get 1
            local.get 4
            i32.add
            local.tee 5
            i32.load
            i32.const 168430090
            i32.xor
            local.tee 6
            i32.const -1
            i32.xor
            local.get 6
            i32.const -16843009
            i32.add
            i32.and
            i32.const -2139062144
            i32.and
            br_if 0 (;@4;)
            local.get 5
            i32.const 4
            i32.add
            i32.load
            i32.const 168430090
            i32.xor
            local.tee 5
            i32.const -1
            i32.xor
            local.get 5
            i32.const -16843009
            i32.add
            i32.and
            i32.const -2139062144
            i32.and
            br_if 0 (;@4;)
            local.get 4
            i32.const 8
            i32.add
            local.tee 4
            local.get 3
            i32.le_u
            br_if 1 (;@3;)
          end
        end
        local.get 4
        local.get 2
        i32.le_u
        br_if 0 (;@2;)
        local.get 4
        local.get 2
        call 31
        unreachable
      end
      i32.const 0
      local.set 5
      local.get 2
      local.get 4
      i32.ne
      if  ;; label = @2
        loop  ;; label = @3
          local.get 1
          local.get 4
          i32.add
          i32.load8_u
          i32.const 10
          i32.eq
          if  ;; label = @4
            local.get 4
            local.set 3
            i32.const 1
            local.set 5
            br 3 (;@1;)
          end
          local.get 2
          local.get 4
          i32.const 1
          i32.add
          local.tee 4
          i32.ne
          br_if 0 (;@3;)
        end
      end
      local.get 2
      local.set 3
    end
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 5
    i32.store)
  (func (;14;) (type 0) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i64 i64)
    global.get 0
    i32.const -64
    i32.add
    local.tee 2
    global.set 0
    local.get 0
    block (result i32)  ;; label = @1
      local.get 0
      i32.load8_u offset=8
      if  ;; label = @2
        local.get 0
        i32.load
        local.set 4
        i32.const 1
        br 1 (;@1;)
      end
      local.get 0
      i32.load
      local.set 4
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.tee 3
      i32.load offset=24
      local.tee 5
      i32.const 4
      i32.and
      i32.eqz
      if  ;; label = @2
        i32.const 1
        local.get 3
        i32.load
        i32.const 1049146
        i32.const 1049150
        local.get 4
        select
        i32.const 2
        i32.const 1
        local.get 4
        select
        local.get 3
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 1)
        br_if 1 (;@1;)
        drop
        local.get 1
        local.get 3
        i32.const 1049556
        i32.load
        call_indirect (type 0)
        br 1 (;@1;)
      end
      local.get 4
      i32.eqz
      if  ;; label = @2
        local.get 3
        i32.load
        i32.const 1049148
        i32.const 2
        local.get 3
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 1)
        if  ;; label = @3
          i32.const 0
          local.set 4
          i32.const 1
          br 2 (;@1;)
        end
        local.get 3
        i32.load offset=24
        local.set 5
      end
      local.get 2
      i32.const 1
      i32.store8 offset=23
      local.get 2
      i32.const 1049116
      i32.store offset=28
      local.get 2
      local.get 3
      i64.load align=4
      i64.store offset=8
      local.get 2
      local.get 2
      i32.const 23
      i32.add
      i32.store offset=16
      local.get 3
      i64.load offset=8 align=4
      local.set 6
      local.get 3
      i64.load offset=16 align=4
      local.set 7
      local.get 2
      local.get 3
      i32.load8_u offset=32
      i32.store8 offset=56
      local.get 2
      local.get 3
      i32.load offset=28
      i32.store offset=52
      local.get 2
      local.get 5
      i32.store offset=48
      local.get 2
      local.get 7
      i64.store offset=40
      local.get 2
      local.get 6
      i64.store offset=32
      local.get 2
      local.get 2
      i32.const 8
      i32.add
      i32.store offset=24
      i32.const 1
      local.get 1
      local.get 2
      i32.const 24
      i32.add
      i32.const 1049556
      i32.load
      call_indirect (type 0)
      br_if 0 (;@1;)
      drop
      local.get 2
      i32.load offset=24
      i32.const 1049144
      i32.const 2
      local.get 2
      i32.load offset=28
      i32.load offset=12
      call_indirect (type 1)
    end
    i32.store8 offset=8
    local.get 0
    local.get 4
    i32.const 1
    i32.add
    i32.store
    local.get 2
    i32.const -64
    i32.sub
    global.set 0
    local.get 0)
  (func (;15;) (type 2) (param i32 i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i64.const 0
    i64.store offset=16 align=4
    local.get 0
    block (result i32)  ;; label = @1
      i32.const 0
      local.get 1
      i32.const 256
      i32.lt_u
      br_if 0 (;@1;)
      drop
      i32.const 31
      local.get 1
      i32.const 16777215
      i32.gt_u
      br_if 0 (;@1;)
      drop
      local.get 1
      i32.const 6
      local.get 1
      i32.const 8
      i32.shr_u
      i32.clz
      local.tee 2
      i32.sub
      i32.shr_u
      i32.const 1
      i32.and
      local.get 2
      i32.const 1
      i32.shl
      i32.sub
      i32.const 62
      i32.add
    end
    local.tee 2
    i32.store offset=28
    local.get 2
    i32.const 2
    i32.shl
    i32.const 1066008
    i32.add
    local.set 3
    local.get 0
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 1066420
            i32.load
            local.tee 5
            i32.const 1
            local.get 2
            i32.shl
            local.tee 6
            i32.and
            if  ;; label = @5
              local.get 3
              i32.load
              local.set 3
              local.get 2
              call 53
              local.set 2
              local.get 3
              call 70
              local.get 1
              i32.ne
              br_if 1 (;@4;)
              local.get 3
              local.set 2
              br 2 (;@3;)
            end
            i32.const 1066420
            local.get 5
            local.get 6
            i32.or
            i32.store
            local.get 3
            local.get 0
            i32.store
            br 3 (;@1;)
          end
          local.get 1
          local.get 2
          i32.shl
          local.set 5
          loop  ;; label = @4
            local.get 3
            local.get 5
            i32.const 29
            i32.shr_u
            i32.const 4
            i32.and
            i32.add
            i32.const 16
            i32.add
            local.tee 6
            i32.load
            local.tee 2
            i32.eqz
            br_if 2 (;@2;)
            local.get 5
            i32.const 1
            i32.shl
            local.set 5
            local.get 2
            local.tee 3
            call 70
            local.get 1
            i32.ne
            br_if 0 (;@4;)
          end
        end
        local.get 2
        i32.load offset=8
        local.tee 1
        local.get 4
        i32.store offset=12
        local.get 2
        local.get 4
        i32.store offset=8
        local.get 4
        local.get 2
        i32.store offset=12
        local.get 4
        local.get 1
        i32.store offset=8
        local.get 0
        i32.const 0
        i32.store offset=24
        return
      end
      local.get 6
      local.get 0
      i32.store
    end
    local.get 0
    local.get 3
    i32.store offset=24
    local.get 4
    local.get 4
    i32.store offset=8
    local.get 4
    local.get 4
    i32.store offset=12)
  (func (;16;) (type 4) (param i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    i32.load offset=24
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 0
        i32.load offset=12
        i32.eq
        if  ;; label = @3
          local.get 0
          i32.const 20
          i32.const 16
          local.get 0
          i32.const 20
          i32.add
          local.tee 1
          i32.load
          local.tee 3
          select
          i32.add
          i32.load
          local.tee 2
          br_if 1 (;@2;)
          i32.const 0
          local.set 1
          br 2 (;@1;)
        end
        local.get 0
        i32.load offset=8
        local.tee 2
        local.get 0
        i32.load offset=12
        local.tee 1
        i32.store offset=12
        local.get 1
        local.get 2
        i32.store offset=8
        br 1 (;@1;)
      end
      local.get 1
      local.get 0
      i32.const 16
      i32.add
      local.get 3
      select
      local.set 3
      loop  ;; label = @2
        local.get 3
        local.set 5
        local.get 2
        local.tee 1
        i32.const 20
        i32.add
        local.tee 3
        i32.load
        local.tee 2
        i32.eqz
        if  ;; label = @3
          local.get 1
          i32.const 16
          i32.add
          local.set 3
          local.get 1
          i32.load offset=16
          local.set 2
        end
        local.get 2
        br_if 0 (;@2;)
      end
      local.get 5
      i32.const 0
      i32.store
    end
    block  ;; label = @1
      local.get 4
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        local.get 0
        local.get 0
        i32.load offset=28
        i32.const 2
        i32.shl
        i32.const 1066008
        i32.add
        local.tee 2
        i32.load
        i32.ne
        if  ;; label = @3
          local.get 4
          i32.const 16
          i32.const 20
          local.get 4
          i32.load offset=16
          local.get 0
          i32.eq
          select
          i32.add
          local.get 1
          i32.store
          local.get 1
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        local.get 2
        local.get 1
        i32.store
        local.get 1
        br_if 0 (;@2;)
        i32.const 1066420
        i32.const 1066420
        i32.load
        i32.const -2
        local.get 0
        i32.load offset=28
        i32.rotl
        i32.and
        i32.store
        return
      end
      local.get 1
      local.get 4
      i32.store offset=24
      local.get 0
      i32.load offset=16
      local.tee 2
      if  ;; label = @2
        local.get 1
        local.get 2
        i32.store offset=16
        local.get 2
        local.get 1
        i32.store offset=24
      end
      local.get 0
      i32.const 20
      i32.add
      i32.load
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      i32.const 20
      i32.add
      local.get 0
      i32.store
      local.get 0
      local.get 1
      i32.store offset=24
    end)
  (func (;17;) (type 5) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 1066144
    i32.load
    local.tee 2
    if  ;; label = @1
      i32.const 1066136
      local.set 6
      loop  ;; label = @2
        local.get 2
        local.tee 1
        i32.load offset=8
        local.set 2
        local.get 1
        i32.load offset=4
        local.set 3
        local.get 1
        i32.load
        local.set 4
        local.get 1
        i32.const 12
        i32.add
        i32.load
        drop
        local.get 1
        local.set 6
        local.get 5
        i32.const 1
        i32.add
        local.set 5
        local.get 2
        br_if 0 (;@2;)
      end
    end
    i32.const 1066456
    local.get 5
    i32.const 4095
    local.get 5
    i32.const 4095
    i32.gt_u
    select
    i32.store
    local.get 8)
  (func (;18;) (type 2) (param i32 i32)
    (local i32 i32 i32 i64)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.load offset=4
    i32.eqz
    if  ;; label = @1
      local.get 1
      i32.load offset=12
      local.set 3
      local.get 2
      i32.const 16
      i32.add
      local.tee 4
      i32.const 0
      i32.store
      local.get 2
      i64.const 4294967296
      i64.store offset=8
      local.get 2
      local.get 2
      i32.const 8
      i32.add
      i32.store offset=20
      local.get 2
      i32.const 40
      i32.add
      local.get 3
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 32
      i32.add
      local.get 3
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 3
      i64.load align=4
      i64.store offset=24
      local.get 2
      i32.const 20
      i32.add
      i32.const 1048696
      local.get 2
      i32.const 24
      i32.add
      call 6
      drop
      local.get 1
      i32.const 8
      i32.add
      local.get 4
      i32.load
      i32.store
      local.get 1
      local.get 2
      i64.load offset=8
      i64.store align=4
    end
    local.get 1
    i64.load align=4
    local.set 5
    local.get 1
    i64.const 4294967296
    i64.store align=4
    local.get 2
    i32.const 32
    i32.add
    local.tee 3
    local.get 1
    i32.const 8
    i32.add
    local.tee 1
    i32.load
    i32.store
    local.get 1
    i32.const 0
    i32.store
    local.get 2
    local.get 5
    i64.store offset=24
    i32.const 12
    i32.const 4
    call 58
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 12
      i32.const 4
      call 74
      unreachable
    end
    local.get 1
    local.get 2
    i64.load offset=24
    i64.store align=4
    local.get 1
    i32.const 8
    i32.add
    local.get 3
    i32.load
    i32.store
    local.get 0
    i32.const 1048916
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 48
    i32.add
    global.set 0)
  (func (;19;) (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 0
    i32.load
    local.get 2
    i32.const 0
    i32.store offset=12
    local.get 2
    i32.const 12
    i32.add
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 128
          i32.ge_u
          if  ;; label = @4
            local.get 1
            i32.const 2048
            i32.lt_u
            br_if 1 (;@3;)
            local.get 1
            i32.const 65536
            i32.ge_u
            br_if 2 (;@2;)
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8 offset=12
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            i32.const 3
            br 3 (;@1;)
          end
          local.get 2
          local.get 1
          i32.store8 offset=12
          i32.const 1
          br 2 (;@1;)
        end
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8 offset=12
        i32.const 2
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=15
      local.get 2
      local.get 1
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=14
      local.get 2
      local.get 1
      i32.const 12
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=13
      local.get 2
      local.get 1
      i32.const 18
      i32.shr_u
      i32.const 7
      i32.and
      i32.const 240
      i32.or
      i32.store8 offset=12
      i32.const 4
    end
    call 8
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;20;) (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 0
    i32.store offset=12
    local.get 0
    local.get 2
    i32.const 12
    i32.add
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.const 128
          i32.ge_u
          if  ;; label = @4
            local.get 1
            i32.const 2048
            i32.lt_u
            br_if 1 (;@3;)
            local.get 1
            i32.const 65536
            i32.ge_u
            br_if 2 (;@2;)
            local.get 2
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            local.get 2
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8 offset=12
            local.get 2
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            i32.const 3
            br 3 (;@1;)
          end
          local.get 2
          local.get 1
          i32.store8 offset=12
          i32.const 1
          br 2 (;@1;)
        end
        local.get 2
        local.get 1
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.store8 offset=13
        local.get 2
        local.get 1
        i32.const 6
        i32.shr_u
        i32.const 192
        i32.or
        i32.store8 offset=12
        i32.const 2
        br 1 (;@1;)
      end
      local.get 2
      local.get 1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=15
      local.get 2
      local.get 1
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=14
      local.get 2
      local.get 1
      i32.const 12
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=13
      local.get 2
      local.get 1
      i32.const 18
      i32.shr_u
      i32.const 7
      i32.and
      i32.const 240
      i32.or
      i32.store8 offset=12
      i32.const 4
    end
    call 8
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;21;) (type 0) (param i32 i32) (result i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.load
    i32.const 1049528
    i32.const 15
    local.get 1
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 1)
    i32.store8 offset=24
    local.get 2
    local.get 1
    i32.store offset=20
    local.get 2
    i32.const 0
    i32.store8 offset=25
    local.get 2
    i32.const 0
    i32.store offset=16
    local.get 2
    i32.const 16
    i32.add
    local.get 2
    i32.const 12
    i32.add
    call 14
    local.set 0
    block (result i32)  ;; label = @1
      local.get 2
      i32.load8_u offset=24
      local.tee 1
      local.get 0
      i32.load
      local.tee 3
      i32.eqz
      br_if 0 (;@1;)
      drop
      local.get 1
      i32.const 255
      i32.and
      local.set 0
      i32.const 1
      local.get 0
      br_if 0 (;@1;)
      drop
      local.get 2
      i32.load offset=20
      local.set 0
      block  ;; label = @2
        local.get 3
        i32.const 1
        i32.ne
        br_if 0 (;@2;)
        local.get 2
        i32.load8_u offset=25
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.load8_u offset=24
        i32.const 4
        i32.and
        br_if 0 (;@2;)
        i32.const 1
        local.get 0
        i32.load
        i32.const 1049151
        i32.const 1
        local.get 0
        i32.load offset=4
        i32.load offset=12
        call_indirect (type 1)
        br_if 1 (;@1;)
        drop
      end
      local.get 0
      i32.load
      i32.const 1049076
      i32.const 1
      local.get 0
      i32.load offset=4
      i32.load offset=12
      call_indirect (type 1)
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    i32.const 255
    i32.and
    i32.const 0
    i32.ne)
  (func (;22;) (type 6) (param i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        local.get 2
        i32.add
        local.tee 2
        local.get 1
        i32.lt_u
        br_if 0 (;@2;)
        local.get 0
        i32.load
        local.tee 1
        i32.const 1
        i32.shl
        local.tee 4
        local.get 2
        local.get 4
        local.get 2
        i32.gt_u
        select
        local.tee 2
        i32.const 8
        local.get 2
        i32.const 8
        i32.gt_u
        select
        local.tee 2
        i32.const -1
        i32.xor
        i32.const 31
        i32.shr_u
        local.set 4
        block  ;; label = @3
          local.get 1
          if  ;; label = @4
            local.get 3
            i32.const 1
            i32.store offset=24
            local.get 3
            local.get 1
            i32.store offset=20
            local.get 3
            local.get 0
            i32.const 4
            i32.add
            i32.load
            i32.store offset=16
            br 1 (;@3;)
          end
          local.get 3
          i32.const 0
          i32.store offset=24
        end
        local.get 3
        local.get 2
        local.get 4
        local.get 3
        i32.const 16
        i32.add
        call 25
        local.get 3
        i32.load offset=4
        local.set 1
        local.get 3
        i32.load
        i32.eqz
        if  ;; label = @3
          local.get 0
          local.get 2
          i32.store
          local.get 0
          local.get 1
          i32.store offset=4
          br 2 (;@1;)
        end
        local.get 3
        i32.const 8
        i32.add
        i32.load
        local.tee 0
        i32.const -2147483647
        i32.eq
        br_if 1 (;@1;)
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        local.get 0
        call 74
        unreachable
      end
      call 41
      unreachable
    end
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func (;23;) (type 2) (param i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 1
        i32.add
        local.tee 1
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.load
        local.tee 3
        i32.const 1
        i32.shl
        local.tee 4
        local.get 1
        local.get 4
        local.get 1
        i32.gt_u
        select
        local.tee 1
        i32.const 8
        local.get 1
        i32.const 8
        i32.gt_u
        select
        local.tee 1
        i32.const -1
        i32.xor
        i32.const 31
        i32.shr_u
        local.set 4
        block  ;; label = @3
          local.get 3
          if  ;; label = @4
            local.get 2
            i32.const 1
            i32.store offset=24
            local.get 2
            local.get 3
            i32.store offset=20
            local.get 2
            local.get 0
            i32.const 4
            i32.add
            i32.load
            i32.store offset=16
            br 1 (;@3;)
          end
          local.get 2
          i32.const 0
          i32.store offset=24
        end
        local.get 2
        local.get 1
        local.get 4
        local.get 2
        i32.const 16
        i32.add
        call 25
        local.get 2
        i32.load offset=4
        local.set 3
        local.get 2
        i32.load
        i32.eqz
        if  ;; label = @3
          local.get 0
          local.get 1
          i32.store
          local.get 0
          local.get 3
          i32.store offset=4
          br 2 (;@1;)
        end
        local.get 2
        i32.const 8
        i32.add
        i32.load
        local.tee 0
        i32.const -2147483647
        i32.eq
        br_if 1 (;@1;)
        local.get 0
        i32.eqz
        br_if 0 (;@2;)
        local.get 3
        local.get 0
        call 74
        unreachable
      end
      call 41
      unreachable
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;24;) (type 11) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 5
    global.set 0
    i32.const 1066004
    i32.const 1066004
    i32.load
    local.tee 6
    i32.const 1
    i32.add
    i32.store
    block  ;; label = @1
      block  ;; label = @2
        local.get 6
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        i32.const 1066460
        i32.const 1066460
        i32.load
        i32.const 1
        i32.add
        local.tee 6
        i32.store
        local.get 6
        i32.const 2
        i32.gt_u
        br_if 0 (;@2;)
        local.get 5
        local.get 4
        i32.store8 offset=24
        local.get 5
        local.get 3
        i32.store offset=20
        local.get 5
        local.get 2
        i32.store offset=16
        local.get 5
        i32.const 1048988
        i32.store offset=12
        local.get 5
        i32.const 1048720
        i32.store offset=8
        i32.const 1065988
        i32.load
        local.tee 2
        i32.const -1
        i32.le_s
        br_if 0 (;@2;)
        i32.const 1065988
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        i32.store
        i32.const 1065988
        i32.const 1065996
        i32.load
        if (result i32)  ;; label = @3
          local.get 5
          local.get 0
          local.get 1
          i32.load offset=16
          call_indirect (type 2)
          local.get 5
          local.get 5
          i64.load
          i64.store offset=8
          i32.const 1065996
          i32.load
          local.get 5
          i32.const 8
          i32.add
          i32.const 1066000
          i32.load
          i32.load offset=20
          call_indirect (type 2)
          i32.const 1065988
          i32.load
        else
          local.get 2
        end
        i32.const -1
        i32.add
        i32.store
        local.get 6
        i32.const 1
        i32.gt_u
        br_if 0 (;@2;)
        local.get 4
        br_if 1 (;@1;)
      end
      unreachable
    end
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    unreachable)
  (func (;25;) (type 10) (param i32 i32 i32 i32)
    (local i32)
    block  ;; label = @1
      local.get 2
      if  ;; label = @2
        block (result i32)  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                i32.const 0
                i32.ge_s
                if  ;; label = @7
                  local.get 3
                  i32.load offset=8
                  i32.eqz
                  br_if 2 (;@5;)
                  local.get 3
                  i32.load offset=4
                  local.tee 4
                  br_if 1 (;@6;)
                  local.get 1
                  br_if 3 (;@4;)
                  local.get 2
                  br 4 (;@3;)
                end
                local.get 0
                i32.const 8
                i32.add
                i32.const 0
                i32.store
                br 5 (;@1;)
              end
              local.get 3
              i32.load
              local.get 4
              local.get 2
              local.get 1
              call 4
              br 2 (;@3;)
            end
            local.get 1
            br_if 0 (;@4;)
            local.get 2
            br 1 (;@3;)
          end
          local.get 1
          local.get 2
          call 58
        end
        local.tee 3
        if  ;; label = @3
          local.get 0
          local.get 3
          i32.store offset=4
          local.get 0
          i32.const 8
          i32.add
          local.get 1
          i32.store
          local.get 0
          i32.const 0
          i32.store
          return
        end
        local.get 0
        local.get 1
        i32.store offset=4
        local.get 0
        i32.const 8
        i32.add
        local.get 2
        i32.store
        br 1 (;@1;)
      end
      local.get 0
      local.get 1
      i32.store offset=4
      local.get 0
      i32.const 8
      i32.add
      i32.const 0
      i32.store
    end
    local.get 0
    i32.const 1
    i32.store)
  (func (;26;) (type 4) (param i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    block  ;; label = @1
      local.get 0
      i32.const 0
      i32.ge_s
      if  ;; label = @2
        i32.const 1049560
        local.get 0
        i32.store
        block  ;; label = @3
          local.get 0
          i32.eqz
          br_if 0 (;@3;)
          i32.const 24
          local.set 1
          i32.const 2046
          local.set 2
          loop  ;; label = @4
            local.get 1
            i32.const 1049540
            i32.add
            i64.const 0
            i64.store align=1
            local.get 0
            local.get 2
            i32.add
            local.tee 4
            i32.const 2047
            i32.eq
            br_if 1 (;@3;)
            local.get 1
            i32.const 1049548
            i32.add
            i64.const 0
            i64.store align=1
            local.get 4
            i32.const 2048
            i32.eq
            br_if 1 (;@3;)
            local.get 2
            i32.eqz
            br_if 3 (;@1;)
            local.get 1
            i32.const 1049556
            i32.add
            i64.const 0
            i64.store align=1
            local.get 1
            i32.const 24
            i32.add
            local.set 1
            local.get 0
            local.get 2
            i32.const -3
            i32.add
            local.tee 2
            i32.add
            i32.const 2046
            i32.ne
            br_if 0 (;@4;)
          end
        end
        local.get 3
        i32.const 16
        i32.add
        global.set 0
        return
      end
      local.get 3
      i32.const 8
      i32.add
      call 29
      unreachable
    end
    local.get 1
    i32.const 1048664
    call 67
    unreachable)
  (func (;27;) (type 2) (param i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 1
    i32.load offset=4
    i32.eqz
    if  ;; label = @1
      local.get 1
      i32.load offset=12
      local.set 3
      local.get 2
      i32.const 16
      i32.add
      local.tee 4
      i32.const 0
      i32.store
      local.get 2
      i64.const 4294967296
      i64.store offset=8
      local.get 2
      local.get 2
      i32.const 8
      i32.add
      i32.store offset=20
      local.get 2
      i32.const 40
      i32.add
      local.get 3
      i32.const 16
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      i32.const 32
      i32.add
      local.get 3
      i32.const 8
      i32.add
      i64.load align=4
      i64.store
      local.get 2
      local.get 3
      i64.load align=4
      i64.store offset=24
      local.get 2
      i32.const 20
      i32.add
      i32.const 1048696
      local.get 2
      i32.const 24
      i32.add
      call 6
      drop
      local.get 1
      i32.const 8
      i32.add
      local.get 4
      i32.load
      i32.store
      local.get 1
      local.get 2
      i64.load offset=8
      i64.store align=4
    end
    local.get 0
    i32.const 1048916
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 48
    i32.add
    global.set 0)
  (func (;28;) (type 4) (param i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    i32.load
    local.tee 2
    i32.const 20
    i32.add
    i32.load
    local.set 3
    block  ;; label = @1
      block (result i32)  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 2
            i32.const 12
            i32.add
            i32.load
            br_table 0 (;@4;) 1 (;@3;) 3 (;@1;)
          end
          local.get 3
          br_if 2 (;@1;)
          i32.const 0
          local.set 2
          i32.const 1048720
          br 1 (;@2;)
        end
        local.get 3
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=8
        local.tee 3
        i32.load offset=4
        local.set 2
        local.get 3
        i32.load
      end
      local.set 3
      local.get 1
      local.get 2
      i32.store offset=4
      local.get 1
      local.get 3
      i32.store
      local.get 1
      i32.const 1048968
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.load offset=8
      local.get 0
      i32.load offset=8
      local.get 1
      i32.load8_u offset=16
      call 24
      unreachable
    end
    local.get 1
    i32.const 0
    i32.store offset=4
    local.get 1
    local.get 2
    i32.store offset=12
    local.get 1
    i32.const 1048948
    local.get 0
    i32.load offset=4
    local.tee 1
    i32.load offset=8
    local.get 0
    i32.load offset=8
    local.get 1
    i32.load8_u offset=16
    call 24
    unreachable)
  (func (;29;) (type 4) (param i32)
    (local i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 1
    global.set 0
    local.get 1
    i32.const 43
    i32.store offset=12
    local.get 1
    i32.const 1048576
    i32.store offset=8
    local.get 1
    i32.const 1048620
    i32.store offset=20
    local.get 1
    local.get 0
    i32.store offset=16
    local.get 1
    i32.const 36
    i32.add
    i32.const 2
    i32.store
    local.get 1
    i32.const 44
    i32.add
    i32.const 2
    i32.store
    local.get 1
    i32.const 60
    i32.add
    i32.const 19
    i32.store
    local.get 1
    i32.const 1049100
    i32.store offset=32
    local.get 1
    i32.const 0
    i32.store offset=24
    local.get 1
    i32.const 20
    i32.store offset=52
    local.get 1
    local.get 1
    i32.const 48
    i32.add
    i32.store offset=40
    local.get 1
    local.get 1
    i32.const 16
    i32.add
    i32.store offset=56
    local.get 1
    local.get 1
    i32.const 8
    i32.add
    i32.store offset=48
    local.get 1
    i32.const 24
    i32.add
    i32.const 1048648
    call 45
    unreachable)
  (func (;30;) (type 8)
    (local i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        i32.const 1049560
        i32.load
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        i32.const -16384
        local.set 0
        loop  ;; label = @3
          local.get 0
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 1065948
          i32.add
          local.tee 2
          i64.const 0
          local.get 2
          i64.load align=1
          i64.sub
          i64.const 2
          i64.div_s
          i64.store align=1
          local.get 1
          i32.const 1
          i32.or
          local.get 3
          i32.eq
          br_if 1 (;@2;)
          local.get 0
          i32.const 1065956
          i32.add
          local.tee 2
          i64.const 0
          local.get 2
          i64.load align=1
          i64.sub
          i64.const 2
          i64.div_s
          i64.store align=1
          local.get 0
          i32.const 16
          i32.add
          local.set 0
          local.get 1
          i32.const 2
          i32.add
          local.tee 1
          local.get 3
          i32.ne
          br_if 0 (;@3;)
        end
      end
      return
    end
    i32.const 16392
    i32.const 1048680
    call 67
    unreachable)
  (func (;31;) (type 2) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=4
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.const 20
    i32.add
    i32.const 2
    i32.store
    local.get 2
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 2
    i32.const 44
    i32.add
    i32.const 3
    i32.store
    local.get 2
    i32.const 1049480
    i32.store offset=16
    local.get 2
    i32.const 0
    i32.store offset=8
    local.get 2
    i32.const 3
    i32.store offset=36
    local.get 2
    local.get 2
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 2
    local.get 2
    i32.const 4
    i32.add
    i32.store offset=40
    local.get 2
    local.get 2
    i32.store offset=32
    local.get 2
    i32.const 8
    i32.add
    i32.const 1049412
    call 45
    unreachable)
  (func (;32;) (type 2) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 16384
    i32.store offset=4
    local.get 2
    local.get 0
    i32.store
    local.get 2
    i32.const 20
    i32.add
    i32.const 2
    i32.store
    local.get 2
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    local.get 2
    i32.const 44
    i32.add
    i32.const 3
    i32.store
    local.get 2
    i32.const 1049512
    i32.store offset=16
    local.get 2
    i32.const 0
    i32.store offset=8
    local.get 2
    i32.const 3
    i32.store offset=36
    local.get 2
    local.get 2
    i32.const 32
    i32.add
    i32.store offset=24
    local.get 2
    local.get 2
    i32.const 4
    i32.add
    i32.store offset=40
    local.get 2
    local.get 2
    i32.store offset=32
    local.get 2
    i32.const 8
    i32.add
    local.get 1
    call 45
    unreachable)
  (func (;33;) (type 2) (param i32 i32)
    (local i32 i32 i32)
    local.get 0
    local.get 0
    call 80
    local.tee 0
    i32.const 8
    call 55
    local.get 0
    i32.sub
    local.tee 2
    call 78
    local.set 0
    i32.const 1066428
    local.get 1
    local.get 2
    i32.sub
    local.tee 1
    i32.store
    i32.const 1066436
    local.get 0
    i32.store
    local.get 0
    local.get 1
    i32.const 1
    i32.or
    i32.store offset=4
    i32.const 8
    i32.const 8
    call 55
    local.set 2
    i32.const 20
    i32.const 8
    call 55
    local.set 3
    i32.const 16
    i32.const 8
    call 55
    local.set 4
    local.get 0
    local.get 1
    call 78
    local.get 4
    local.get 3
    local.get 2
    i32.const 8
    i32.sub
    i32.add
    i32.add
    i32.store offset=4
    i32.const 1066448
    i32.const 2097152
    i32.store)
  (func (;34;) (type 2) (param i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 1
    global.set 0
    i32.const 1065948
    i32.load8_u
    if  ;; label = @1
      local.get 1
      i32.const 20
      i32.add
      i32.const 2
      i32.store
      local.get 1
      i32.const 28
      i32.add
      i32.const 1
      i32.store
      local.get 1
      i32.const 1048800
      i32.store offset=16
      local.get 1
      i32.const 0
      i32.store offset=8
      local.get 1
      i32.const 3
      i32.store offset=36
      local.get 1
      local.get 0
      i32.store offset=44
      local.get 1
      local.get 1
      i32.const 32
      i32.add
      i32.store offset=24
      local.get 1
      local.get 1
      i32.const 44
      i32.add
      i32.store offset=32
      local.get 1
      i32.const 8
      i32.add
      i32.const 1048840
      call 45
      unreachable
    end
    local.get 1
    i32.const 48
    i32.add
    global.set 0)
  (func (;35;) (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.load
    i32.store offset=4
    local.get 2
    i32.const 24
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 16
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1048696
    local.get 2
    i32.const 8
    i32.add
    call 6
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;36;) (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.load
    i32.store offset=4
    local.get 2
    i32.const 24
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 16
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1049352
    local.get 2
    i32.const 8
    i32.add
    call 6
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;37;) (type 0) (param i32 i32) (result i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 0
    i32.store offset=4
    local.get 2
    i32.const 24
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    i32.const 16
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 2
    local.get 1
    i64.load align=4
    i64.store offset=8
    local.get 2
    i32.const 4
    i32.add
    i32.const 1049352
    local.get 2
    i32.const 8
    i32.add
    call 6
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;38;) (type 4) (param i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    block  ;; label = @1
      local.get 0
      i32.load offset=12
      local.tee 2
      if  ;; label = @2
        local.get 0
        i32.load offset=8
        local.tee 3
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 2
        i32.store offset=8
        local.get 1
        local.get 0
        i32.store offset=4
        local.get 1
        local.get 3
        i32.store
        local.get 1
        call 46
        unreachable
      end
      i32.const 1048900
      call 39
      unreachable
    end
    i32.const 1048884
    call 39
    unreachable)
  (func (;39;) (type 4) (param i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 12
    i32.add
    i32.const 1
    i32.store
    local.get 1
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    local.get 1
    i32.const 1049076
    i32.store offset=16
    local.get 1
    i32.const 0
    i32.store
    local.get 1
    i32.const 43
    i32.store offset=28
    local.get 1
    i32.const 1048720
    i32.store offset=24
    local.get 1
    local.get 1
    i32.const 24
    i32.add
    i32.store offset=8
    local.get 1
    local.get 0
    call 45
    unreachable)
  (func (;40;) (type 1) (param i32 i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.load
    local.tee 0
    i32.load
    local.get 0
    i32.load offset=8
    local.tee 3
    i32.sub
    local.get 2
    i32.lt_u
    if  ;; label = @1
      local.get 0
      local.get 3
      local.get 2
      call 22
      local.get 0
      i32.load offset=8
      local.set 3
    end
    local.get 0
    i32.load offset=4
    local.get 3
    i32.add
    local.get 1
    local.get 2
    call 76
    drop
    local.get 0
    local.get 2
    local.get 3
    i32.add
    i32.store offset=8
    i32.const 0)
  (func (;41;) (type 8)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 20
    i32.add
    i32.const 1
    i32.store
    local.get 0
    i32.const 28
    i32.add
    i32.const 0
    i32.store
    local.get 0
    i32.const 1049052
    i32.store offset=16
    local.get 0
    i32.const 1049004
    i32.store offset=24
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i32.const 1049060
    call 45
    unreachable)
  (func (;42;) (type 2) (param i32 i32)
    (local i32 i32)
    local.get 1
    i32.load offset=4
    local.set 2
    local.get 1
    i32.load
    local.set 3
    i32.const 8
    i32.const 4
    call 58
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 8
      i32.const 4
      call 74
      unreachable
    end
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 0
    i32.const 1048932
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func (;43;) (type 2) (param i32 i32)
    (local i32)
    local.get 1
    i32.const 16
    i32.shr_u
    memory.grow
    local.set 2
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 0
    i32.const 0
    local.get 1
    i32.const -65536
    i32.and
    local.get 2
    i32.const -1
    i32.eq
    local.tee 1
    select
    i32.store offset=4
    local.get 0
    i32.const 0
    local.get 2
    i32.const 16
    i32.shl
    local.get 1
    select
    i32.store)
  (func (;44;) (type 9) (param i32 i32 i32 i32) (result i32)
    block  ;; label = @1
      block (result i32)  ;; label = @2
        local.get 2
        i32.const 1114112
        i32.ne
        if  ;; label = @3
          i32.const 1
          local.get 0
          local.get 2
          local.get 1
          i32.load offset=16
          call_indirect (type 0)
          br_if 1 (;@2;)
          drop
        end
        local.get 3
        br_if 1 (;@1;)
        i32.const 0
      end
      return
    end
    local.get 0
    local.get 3
    i32.const 0
    local.get 1
    i32.load offset=12
    call_indirect (type 1))
  (func (;45;) (type 2) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 1
    i32.store8 offset=24
    local.get 2
    local.get 1
    i32.store offset=20
    local.get 2
    local.get 0
    i32.store offset=16
    local.get 2
    i32.const 1049080
    i32.store offset=12
    local.get 2
    i32.const 1049076
    i32.store offset=8
    local.get 2
    i32.const 8
    i32.add
    call 38
    unreachable)
  (func (;46;) (type 4) (param i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i32.const 8
    i32.add
    local.get 0
    i32.const 8
    i32.add
    i32.load
    i32.store
    local.get 1
    local.get 0
    i64.load align=4
    i64.store
    local.get 1
    call 28
    unreachable)
  (func (;47;) (type 2) (param i32 i32)
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const 1
    i32.and
    local.get 1
    i32.or
    i32.const 2
    i32.or
    i32.store offset=4
    local.get 0
    local.get 1
    i32.add
    local.tee 0
    local.get 0
    i32.load offset=4
    i32.const 1
    i32.or
    i32.store offset=4)
  (func (;48;) (type 4) (param i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.const 4
      i32.add
      i32.load
      local.tee 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load
      i32.eqz
      br_if 0 (;@1;)
      local.get 1
      call 2
    end)
  (func (;49;) (type 6) (param i32 i32 i32)
    local.get 2
    local.get 2
    i32.load offset=4
    i32.const -2
    i32.and
    i32.store offset=4
    local.get 0
    local.get 1
    i32.const 1
    i32.or
    i32.store offset=4
    local.get 0
    local.get 1
    i32.add
    local.get 1
    i32.store)
  (func (;50;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 3
    i32.or
    i32.store offset=4
    local.get 0
    local.get 1
    i32.add
    local.tee 0
    local.get 0
    i32.load offset=4
    i32.const 1
    i32.or
    i32.store offset=4)
  (func (;51;) (type 4) (param i32)
    local.get 0
    i32.load
    if  ;; label = @1
      local.get 0
      i32.const 4
      i32.add
      i32.load
      call 2
    end)
  (func (;52;) (type 3) (param i32) (result i32)
    (local i32)
    local.get 0
    i32.load offset=16
    local.tee 1
    if (result i32)  ;; label = @1
      local.get 1
    else
      local.get 0
      i32.const 20
      i32.add
      i32.load
    end)
  (func (;53;) (type 3) (param i32) (result i32)
    i32.const 0
    i32.const 25
    local.get 0
    i32.const 1
    i32.shr_u
    i32.sub
    local.get 0
    i32.const 31
    i32.eq
    select)
  (func (;54;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 1
    i32.or
    i32.store offset=4
    local.get 0
    local.get 1
    i32.add
    local.get 1
    i32.store)
  (func (;55;) (type 0) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.add
    i32.const -1
    i32.add
    i32.const 0
    local.get 1
    i32.sub
    i32.and)
  (func (;56;) (type 3) (param i32) (result i32)
    local.get 0
    i32.const 1
    i32.shl
    local.tee 0
    i32.const 0
    local.get 0
    i32.sub
    i32.or)
  (func (;57;) (type 0) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 0))
  (func (;58;) (type 0) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 9)
  (func (;59;) (type 2) (param i32 i32)
    local.get 0
    i32.const 1048932
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func (;60;) (type 3) (param i32) (result i32)
    local.get 0
    i32.load8_u offset=4
    i32.const 2
    i32.and
    i32.const 1
    i32.shr_u)
  (func (;61;) (type 0) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call 3)
  (func (;62;) (type 3) (param i32) (result i32)
    i32.const 0
    local.get 0
    i32.sub
    local.get 0
    i32.and)
  (func (;63;) (type 3) (param i32) (result i32)
    local.get 0
    i32.load8_u offset=4
    i32.const 3
    i32.and
    i32.eqz)
  (func (;64;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 3
    i32.or
    i32.store offset=4)
  (func (;65;) (type 3) (param i32) (result i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    i32.add)
  (func (;66;) (type 0) (param i32 i32) (result i32)
    local.get 0
    i32.load
    drop
    loop  ;; label = @1
      br 0 (;@1;)
    end
    unreachable)
  (func (;67;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call 32
    unreachable)
  (func (;68;) (type 0) (param i32 i32) (result i32)
    local.get 0
    i64.load32_u
    local.get 1
    call 12)
  (func (;69;) (type 1) (param i32 i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 2
    call 8)
  (func (;70;) (type 3) (param i32) (result i32)
    local.get 0
    i32.load offset=4
    i32.const -8
    i32.and)
  (func (;71;) (type 3) (param i32) (result i32)
    local.get 0
    i32.load offset=4
    i32.const 1
    i32.and)
  (func (;72;) (type 3) (param i32) (result i32)
    local.get 0
    i32.load offset=12
    i32.const 1
    i32.and)
  (func (;73;) (type 3) (param i32) (result i32)
    local.get 0
    i32.load offset=12
    i32.const 1
    i32.shr_u)
  (func (;74;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 1065984
    i32.load
    local.tee 0
    i32.const 4
    local.get 0
    select
    call_indirect (type 2)
    unreachable)
  (func (;75;) (type 0) (param i32 i32) (result i32)
    local.get 1
    i32.const 1049376
    i32.const 2
    call 3)
  (func (;76;) (type 1) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call 11)
  (func (;77;) (type 4) (param i32)
    i32.const 1049564
    local.get 0
    i32.store8)
  (func (;78;) (type 0) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.add)
  (func (;79;) (type 0) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.sub)
  (func (;80;) (type 3) (param i32) (result i32)
    local.get 0
    i32.const 8
    i32.add)
  (func (;81;) (type 3) (param i32) (result i32)
    local.get 0
    i32.const -8
    i32.add)
  (func (;82;) (type 5) (result i32)
    i32.const 1049560
    i32.load)
  (func (;83;) (type 5) (result i32)
    i32.const 1049564
    i32.load8_u)
  (func (;84;) (type 5) (result i32)
    i32.const 1049564)
  (func (;85;) (type 5) (result i32)
    i32.const 1)
  (func (;86;) (type 5) (result i32)
    i32.const 8)
  (func (;87;) (type 7) (param i32) (result i64)
    i64.const 8330237566129496815)
  (func (;88;) (type 7) (param i32) (result i64)
    i64.const -8527728395957036344)
  (func (;89;) (type 7) (param i32) (result i64)
    i64.const 359314774325844787)
  (func (;90;) (type 4) (param i32)
    nop)
  (table (;0;) 30 30 funcref)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (export "memory" (memory 0))
  (export "length" (func 82))
  (export "resize" (func 26))
  (export "get_wasm_memory_buffer_ptr" (func 84))
  (export "input_type" (func 85))
  (export "user_level_type" (func 86))
  (export "apply" (func 30))
  (export "store_value_in_wasm_memory_buffer" (func 77))
  (export "read_wasm_memory_buffer" (func 83))
  (elem (;0;) (i32.const 1) func 90 21 68 34 90 40 10 35 51 89 88 48 18 27 42 59 87 66 57 61 90 87 8 20 37 69 19 36 75)
  (data (;0;) (i32.const 1048576) "called `Result::unwrap()` on an `Err` value\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00src/lib.rs\00\00<\00\10\00\0a\00\00\00\1d\00\00\00\1e\00\00\00<\00\10\00\0a\00\00\00#\00\00\00\0d\00\00\00<\00\10\00\0a\00\00\00R\00\00\00/\00\00\00\05\00\00\00\04\00\00\00\04\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00called `Option::unwrap()` on a `None` valuememory allocation of  bytes failed\0a\00\00\bb\00\10\00\15\00\00\00\d0\00\10\00\0e\00\00\00library/std/src/alloc.rs\f0\00\10\00\18\00\00\00U\01\00\00\09\00\00\00library/std/src/panicking.rs\18\01\10\00\1c\00\00\00>\02\00\00\0f\00\00\00\18\01\10\00\1c\00\00\00=\02\00\00\0f\00\00\00\09\00\00\00\0c\00\00\00\04\00\00\00\0a\00\00\00\05\00\00\00\08\00\00\00\04\00\00\00\0b\00\00\00\0c\00\00\00\10\00\00\00\04\00\00\00\0d\00\00\00\0e\00\00\00\05\00\00\00\08\00\00\00\04\00\00\00\0f\00\00\00\10\00\00\00\05\00\00\00\00\00\00\00\01\00\00\00\11\00\00\00library/alloc/src/raw_vec.rscapacity overflow\00\00\00\c8\01\10\00\11\00\00\00\ac\01\10\00\1c\00\00\00\06\02\00\00\05\00\00\00)\00\00\00\15\00\00\00\00\00\00\00\01\00\00\00\16\00\00\00: \00\00\f4\01\10\00\00\00\00\00\08\02\10\00\02\00\00\00\15\00\00\00\0c\00\00\00\04\00\00\00\17\00\00\00\18\00\00\00\19\00\00\00    ,\0a, (\0a(,00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\15\00\00\00\04\00\00\00\04\00\00\00\1a\00\00\00\1b\00\00\00\1c\00\00\00()library/core/src/slice/memchr.rs\00\00\22\03\10\00 \00\00\00h\00\00\00'\00\00\00range start index  out of range for slice of length T\03\10\00\12\00\00\00f\03\10\00\22\00\00\00range end index \98\03\10\00\10\00\00\00f\03\10\00\22\00\00\00TryFromIntError\00\15\00\00\00\04\00\00\00\04\00\00\00\1d")
  (data (;1;) (i32.const 1049560) "\05"))
