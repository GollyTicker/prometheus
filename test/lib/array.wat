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
          call 56
          local.set 6
          i32.const 20
          i32.const 8
          call 56
          local.set 5
          i32.const 16
          i32.const 8
          call 56
          local.set 1
          i32.const 0
          i32.const 16
          i32.const 8
          call 56
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
          call 56
          local.set 4
          i32.const 1054180
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
              i32.const 1053768
              i32.add
              i32.load
              local.tee 0
              if  ;; label = @6
                local.get 4
                local.get 6
                call 54
                i32.shl
                local.set 7
                i32.const 0
                local.set 5
                i32.const 0
                local.set 1
                loop  ;; label = @7
                  block  ;; label = @8
                    local.get 0
                    call 71
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
              call 57
              i32.const 1054180
              i32.load
              i32.and
              local.tee 0
              i32.eqz
              br_if 3 (;@2;)
              local.get 0
              call 63
              i32.ctz
              i32.const 2
              i32.shl
              i32.const 1053768
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
              call 71
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
              call 53
              local.tee 0
              br_if 0 (;@5;)
            end
            local.get 1
            i32.eqz
            br_if 2 (;@2;)
          end
          i32.const 1054184
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
            call 56
            i32.ge_u
            if  ;; label = @5
              local.get 0
              local.get 4
              call 65
              local.get 6
              local.get 3
              call 55
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
              i32.const 1053912
              i32.add
              local.set 5
              block (result i32)  ;; label = @6
                i32.const 1054176
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
                i32.const 1054176
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
            call 51
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
        call 56
        i32.const -5
        i32.add
        local.get 0
        i32.gt_u
        select
        i32.const 8
        call 56
        local.set 4
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block (result i32)  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    i32.const 1054176
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
                      i32.const 1054184
                      i32.load
                      i32.le_u
                      br_if 7 (;@2;)
                      local.get 2
                      br_if 1 (;@8;)
                      i32.const 1054180
                      i32.load
                      local.tee 0
                      i32.eqz
                      br_if 7 (;@2;)
                      local.get 0
                      call 63
                      i32.ctz
                      i32.const 2
                      i32.shl
                      i32.const 1053768
                      i32.add
                      i32.load
                      local.tee 1
                      call 71
                      local.get 4
                      i32.sub
                      local.set 3
                      local.get 1
                      call 53
                      local.tee 0
                      if  ;; label = @10
                        loop  ;; label = @11
                          local.get 0
                          call 71
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
                          call 53
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
                      call 56
                      i32.lt_u
                      br_if 5 (;@4;)
                      local.get 0
                      local.get 4
                      call 65
                      local.get 5
                      local.get 3
                      call 55
                      i32.const 1054184
                      i32.load
                      local.tee 1
                      i32.eqz
                      br_if 4 (;@5;)
                      local.get 1
                      i32.const -8
                      i32.and
                      i32.const 1053912
                      i32.add
                      local.set 7
                      i32.const 1054192
                      i32.load
                      local.set 6
                      i32.const 1054176
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
                      i32.const 1053920
                      i32.add
                      i32.load
                      local.tee 5
                      i32.const 8
                      i32.add
                      i32.load
                      local.tee 2
                      local.get 0
                      i32.const 1053912
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
                      i32.const 1054176
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
                    call 51
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
                    call 57
                    local.get 2
                    local.get 0
                    i32.shl
                    i32.and
                    call 63
                    i32.ctz
                    local.tee 2
                    i32.const 3
                    i32.shl
                    local.tee 0
                    i32.const 1053920
                    i32.add
                    i32.load
                    local.tee 3
                    i32.const 8
                    i32.add
                    i32.load
                    local.tee 1
                    local.get 0
                    i32.const 1053912
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
                    i32.const 1054176
                    i32.const 1054176
                    i32.load
                    i32.const -2
                    local.get 2
                    i32.rotl
                    i32.and
                    i32.store
                  end
                  local.get 3
                  local.get 4
                  call 65
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
                  call 55
                  i32.const 1054184
                  i32.load
                  local.tee 0
                  if  ;; label = @8
                    local.get 0
                    i32.const -8
                    i32.and
                    i32.const 1053912
                    i32.add
                    local.set 7
                    i32.const 1054192
                    i32.load
                    local.set 6
                    block (result i32)  ;; label = @9
                      i32.const 1054176
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
                      i32.const 1054176
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
                  i32.const 1054192
                  local.get 5
                  i32.store
                  i32.const 1054184
                  local.get 2
                  i32.store
                  local.get 3
                  call 80
                  local.set 3
                  br 6 (;@1;)
                end
                i32.const 1054176
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
            i32.const 1054192
            local.get 5
            i32.store
            i32.const 1054184
            local.get 3
            i32.store
            br 1 (;@3;)
          end
          local.get 0
          local.get 3
          local.get 4
          i32.add
          call 51
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
                      i32.const 1054184
                      i32.load
                      local.tee 0
                      local.get 4
                      i32.lt_u
                      if  ;; label = @10
                        i32.const 1054188
                        i32.load
                        local.tee 0
                        local.get 4
                        i32.gt_u
                        br_if 2 (;@8;)
                        local.get 11
                        i32.const 8
                        i32.const 8
                        call 56
                        local.get 4
                        i32.add
                        i32.const 20
                        i32.const 8
                        call 56
                        i32.add
                        i32.const 16
                        i32.const 8
                        call 56
                        i32.add
                        i32.const 65536
                        call 56
                        call 44
                        local.get 11
                        i32.load
                        local.tee 8
                        br_if 1 (;@9;)
                        i32.const 0
                        local.set 3
                        br 9 (;@1;)
                      end
                      i32.const 1054192
                      i32.load
                      local.set 2
                      local.get 0
                      local.get 4
                      i32.sub
                      local.tee 1
                      i32.const 16
                      i32.const 8
                      call 56
                      i32.lt_u
                      if  ;; label = @10
                        i32.const 1054192
                        i32.const 0
                        i32.store
                        i32.const 1054184
                        i32.load
                        local.set 0
                        i32.const 1054184
                        i32.const 0
                        i32.store
                        local.get 2
                        local.get 0
                        call 51
                        local.get 2
                        call 80
                        local.set 3
                        br 9 (;@1;)
                      end
                      local.get 2
                      local.get 4
                      call 78
                      local.set 0
                      i32.const 1054184
                      local.get 1
                      i32.store
                      i32.const 1054192
                      local.get 0
                      i32.store
                      local.get 0
                      local.get 1
                      call 55
                      local.get 2
                      local.get 4
                      call 65
                      local.get 2
                      call 80
                      local.set 3
                      br 8 (;@1;)
                    end
                    local.get 11
                    i32.load offset=8
                    local.set 12
                    i32.const 1054200
                    local.get 11
                    i32.load offset=4
                    local.tee 10
                    i32.const 1054200
                    i32.load
                    i32.add
                    local.tee 1
                    i32.store
                    i32.const 1054204
                    i32.const 1054204
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
                        i32.const 1054196
                        i32.load
                        if  ;; label = @11
                          i32.const 1053896
                          local.set 0
                          loop  ;; label = @12
                            local.get 0
                            call 66
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
                        i32.const 1054212
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
                      call 73
                      br_if 0 (;@9;)
                      local.get 0
                      call 74
                      local.get 12
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 0
                      local.tee 1
                      i32.load
                      local.tee 5
                      i32.const 1054196
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
                    i32.const 1054212
                    i32.const 1054212
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
                    i32.const 1053896
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
                        call 73
                        br_if 0 (;@10;)
                        local.get 0
                        call 74
                        local.get 12
                        i32.eq
                        br_if 1 (;@9;)
                      end
                      i32.const 1054196
                      i32.load
                      local.set 9
                      i32.const 1053896
                      local.set 0
                      block  ;; label = @10
                        loop  ;; label = @11
                          local.get 0
                          i32.load
                          local.get 9
                          i32.le_u
                          if  ;; label = @12
                            local.get 0
                            call 66
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
                      call 66
                      local.tee 6
                      i32.const 20
                      i32.const 8
                      call 56
                      local.tee 15
                      i32.sub
                      i32.const -23
                      i32.add
                      local.tee 1
                      call 80
                      local.tee 0
                      i32.const 8
                      call 56
                      local.get 0
                      i32.sub
                      local.get 1
                      i32.add
                      local.tee 0
                      local.get 0
                      i32.const 16
                      i32.const 8
                      call 56
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
                      call 56
                      local.set 3
                      i32.const 20
                      i32.const 8
                      call 56
                      local.set 5
                      i32.const 16
                      i32.const 8
                      call 56
                      local.set 2
                      i32.const 1054196
                      local.get 8
                      local.get 8
                      call 80
                      local.tee 1
                      i32.const 8
                      call 56
                      local.get 1
                      i32.sub
                      local.tee 1
                      call 78
                      local.tee 7
                      i32.store
                      i32.const 1054188
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
                      call 56
                      local.set 5
                      i32.const 20
                      i32.const 8
                      call 56
                      local.set 2
                      i32.const 16
                      i32.const 8
                      call 56
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
                      i32.const 1054208
                      i32.const 2097152
                      i32.store
                      local.get 13
                      local.get 15
                      call 65
                      i32.const 1053896
                      i64.load align=4
                      local.set 16
                      local.get 14
                      i32.const 8
                      i32.add
                      i32.const 1053904
                      i64.load align=4
                      i64.store align=4
                      local.get 14
                      local.get 16
                      i64.store align=4
                      i32.const 1053908
                      local.get 12
                      i32.store
                      i32.const 1053900
                      local.get 10
                      i32.store
                      i32.const 1053896
                      local.get 8
                      i32.store
                      i32.const 1053904
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
                      call 50
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
                      i32.const 1053912
                      i32.add
                      local.set 2
                      block (result i32)  ;; label = @10
                        i32.const 1054176
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
                        i32.const 1054176
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
                    call 56
                    local.set 2
                    local.get 3
                    call 80
                    local.tee 1
                    i32.const 8
                    call 56
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
                    call 65
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
                    i32.const 1054196
                    i32.load
                    local.get 0
                    i32.ne
                    if  ;; label = @9
                      local.get 0
                      i32.const 1054192
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
                        call 71
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
                        i32.const 1054176
                        i32.const 1054176
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
                    i32.const 1054196
                    local.get 7
                    i32.store
                    i32.const 1054188
                    i32.const 1054188
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
                  i32.const 1054188
                  local.get 0
                  local.get 4
                  i32.sub
                  local.tee 1
                  i32.store
                  i32.const 1054196
                  i32.const 1054196
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
                  call 65
                  local.get 2
                  call 80
                  local.set 3
                  br 6 (;@1;)
                end
                i32.const 1054212
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
              i32.const 1054196
              i32.load
              i32.const 1054188
              i32.load
              local.get 10
              i32.add
              call 34
              br 3 (;@2;)
            end
            i32.const 1054192
            local.get 7
            i32.store
            i32.const 1054184
            i32.const 1054184
            i32.load
            local.get 4
            i32.add
            local.tee 0
            i32.store
            local.get 7
            local.get 0
            call 55
            local.get 6
            call 80
            local.set 3
            br 3 (;@1;)
          end
          local.get 7
          local.get 4
          local.get 0
          call 50
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
          i32.const 1053912
          i32.add
          local.set 2
          block (result i32)  ;; label = @4
            i32.const 1054176
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
            i32.const 1054176
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
        i32.const 1054216
        i32.const 4095
        i32.store
        i32.const 1053908
        local.get 12
        i32.store
        i32.const 1053900
        local.get 10
        i32.store
        i32.const 1053896
        local.get 8
        i32.store
        i32.const 1053924
        i32.const 1053912
        i32.store
        i32.const 1053932
        i32.const 1053920
        i32.store
        i32.const 1053920
        i32.const 1053912
        i32.store
        i32.const 1053940
        i32.const 1053928
        i32.store
        i32.const 1053928
        i32.const 1053920
        i32.store
        i32.const 1053948
        i32.const 1053936
        i32.store
        i32.const 1053936
        i32.const 1053928
        i32.store
        i32.const 1053956
        i32.const 1053944
        i32.store
        i32.const 1053944
        i32.const 1053936
        i32.store
        i32.const 1053964
        i32.const 1053952
        i32.store
        i32.const 1053952
        i32.const 1053944
        i32.store
        i32.const 1053972
        i32.const 1053960
        i32.store
        i32.const 1053960
        i32.const 1053952
        i32.store
        i32.const 1053980
        i32.const 1053968
        i32.store
        i32.const 1053968
        i32.const 1053960
        i32.store
        i32.const 1053988
        i32.const 1053976
        i32.store
        i32.const 1053976
        i32.const 1053968
        i32.store
        i32.const 1053984
        i32.const 1053976
        i32.store
        i32.const 1053996
        i32.const 1053984
        i32.store
        i32.const 1053992
        i32.const 1053984
        i32.store
        i32.const 1054004
        i32.const 1053992
        i32.store
        i32.const 1054000
        i32.const 1053992
        i32.store
        i32.const 1054012
        i32.const 1054000
        i32.store
        i32.const 1054008
        i32.const 1054000
        i32.store
        i32.const 1054020
        i32.const 1054008
        i32.store
        i32.const 1054016
        i32.const 1054008
        i32.store
        i32.const 1054028
        i32.const 1054016
        i32.store
        i32.const 1054024
        i32.const 1054016
        i32.store
        i32.const 1054036
        i32.const 1054024
        i32.store
        i32.const 1054032
        i32.const 1054024
        i32.store
        i32.const 1054044
        i32.const 1054032
        i32.store
        i32.const 1054040
        i32.const 1054032
        i32.store
        i32.const 1054052
        i32.const 1054040
        i32.store
        i32.const 1054060
        i32.const 1054048
        i32.store
        i32.const 1054048
        i32.const 1054040
        i32.store
        i32.const 1054068
        i32.const 1054056
        i32.store
        i32.const 1054056
        i32.const 1054048
        i32.store
        i32.const 1054076
        i32.const 1054064
        i32.store
        i32.const 1054064
        i32.const 1054056
        i32.store
        i32.const 1054084
        i32.const 1054072
        i32.store
        i32.const 1054072
        i32.const 1054064
        i32.store
        i32.const 1054092
        i32.const 1054080
        i32.store
        i32.const 1054080
        i32.const 1054072
        i32.store
        i32.const 1054100
        i32.const 1054088
        i32.store
        i32.const 1054088
        i32.const 1054080
        i32.store
        i32.const 1054108
        i32.const 1054096
        i32.store
        i32.const 1054096
        i32.const 1054088
        i32.store
        i32.const 1054116
        i32.const 1054104
        i32.store
        i32.const 1054104
        i32.const 1054096
        i32.store
        i32.const 1054124
        i32.const 1054112
        i32.store
        i32.const 1054112
        i32.const 1054104
        i32.store
        i32.const 1054132
        i32.const 1054120
        i32.store
        i32.const 1054120
        i32.const 1054112
        i32.store
        i32.const 1054140
        i32.const 1054128
        i32.store
        i32.const 1054128
        i32.const 1054120
        i32.store
        i32.const 1054148
        i32.const 1054136
        i32.store
        i32.const 1054136
        i32.const 1054128
        i32.store
        i32.const 1054156
        i32.const 1054144
        i32.store
        i32.const 1054144
        i32.const 1054136
        i32.store
        i32.const 1054164
        i32.const 1054152
        i32.store
        i32.const 1054152
        i32.const 1054144
        i32.store
        i32.const 1054172
        i32.const 1054160
        i32.store
        i32.const 1054160
        i32.const 1054152
        i32.store
        i32.const 1054168
        i32.const 1054160
        i32.store
        i32.const 8
        i32.const 8
        call 56
        local.set 5
        i32.const 20
        i32.const 8
        call 56
        local.set 2
        i32.const 16
        i32.const 8
        call 56
        local.set 1
        i32.const 1054196
        local.get 8
        local.get 8
        call 80
        local.tee 0
        i32.const 8
        call 56
        local.get 0
        i32.sub
        local.tee 0
        call 78
        local.tee 3
        i32.store
        i32.const 1054188
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
        call 56
        local.set 2
        i32.const 20
        i32.const 8
        call 56
        local.set 1
        i32.const 16
        i32.const 8
        call 56
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
        i32.const 1054208
        i32.const 2097152
        i32.store
      end
      i32.const 0
      local.set 3
      i32.const 1054188
      i32.load
      local.tee 0
      local.get 4
      i32.le_u
      br_if 0 (;@1;)
      i32.const 1054188
      local.get 0
      local.get 4
      i32.sub
      local.tee 1
      i32.store
      i32.const 1054196
      i32.const 1054196
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
      call 65
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
    call 71
    local.tee 2
    call 78
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          call 72
          br_if 0 (;@3;)
          local.get 0
          i32.load
          local.set 3
          block  ;; label = @4
            local.get 0
            call 64
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
              i32.const 1054192
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
              i32.const 1054184
              local.get 2
              i32.store
              local.get 0
              local.get 2
              local.get 1
              call 50
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
          i32.const 1054176
          i32.const 1054176
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
          call 61
          if  ;; label = @4
            local.get 0
            local.get 2
            local.get 1
            call 50
            br 1 (;@3;)
          end
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                i32.const 1054196
                i32.load
                local.get 1
                i32.ne
                if  ;; label = @7
                  local.get 1
                  i32.const 1054192
                  i32.load
                  i32.ne
                  br_if 1 (;@6;)
                  i32.const 1054192
                  local.get 0
                  i32.store
                  i32.const 1054184
                  i32.const 1054184
                  i32.load
                  local.get 2
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 0
                  local.get 1
                  call 55
                  return
                end
                i32.const 1054196
                local.get 0
                i32.store
                i32.const 1054188
                i32.const 1054188
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
                i32.const 1054192
                i32.load
                i32.eq
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
              local.get 1
              call 71
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
                i32.const 1054176
                i32.const 1054176
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
              call 55
              local.get 0
              i32.const 1054192
              i32.load
              i32.ne
              br_if 2 (;@3;)
              i32.const 1054184
              local.get 2
              i32.store
              br 3 (;@2;)
            end
            i32.const 1054184
            i32.const 0
            i32.store
            i32.const 1054192
            i32.const 0
            i32.store
          end
          i32.const 1054208
          i32.load
          local.get 1
          i32.ge_u
          br_if 1 (;@2;)
          i32.const 8
          i32.const 8
          call 56
          local.set 0
          i32.const 20
          i32.const 8
          call 56
          local.set 1
          i32.const 16
          i32.const 8
          call 56
          local.set 3
          i32.const 0
          i32.const 16
          i32.const 8
          call 56
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
          i32.const 1054196
          i32.load
          i32.eqz
          br_if 1 (;@2;)
          i32.const 8
          i32.const 8
          call 56
          local.set 0
          i32.const 20
          i32.const 8
          call 56
          local.set 1
          i32.const 16
          i32.const 8
          call 56
          local.set 2
          i32.const 0
          block  ;; label = @4
            i32.const 1054188
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
            i32.const 1054196
            i32.load
            local.set 1
            i32.const 1053896
            local.set 0
            block  ;; label = @5
              loop  ;; label = @6
                local.get 0
                i32.load
                local.get 1
                i32.le_u
                if  ;; label = @7
                  local.get 0
                  call 66
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
            call 73
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
          i32.const 1054188
          i32.load
          i32.const 1054208
          i32.load
          i32.le_u
          br_if 1 (;@2;)
          i32.const 1054208
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
        i32.const 1054216
        i32.const 1054216
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
    i32.const 1053912
    i32.add
    local.set 1
    block (result i32)  ;; label = @1
      i32.const 1054176
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
      i32.const 1054176
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
          call 56
          local.set 1
          i32.const 20
          i32.const 8
          call 56
          local.set 5
          i32.const 16
          i32.const 8
          call 56
          local.set 4
          i32.const 0
          local.set 2
          i32.const 0
          i32.const 16
          i32.const 8
          call 56
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
          call 56
          i32.const -5
          i32.add
          local.get 3
          i32.gt_u
          select
          i32.const 8
          call 56
          local.set 5
          local.get 0
          call 81
          local.tee 1
          local.get 1
          call 71
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
                        call 64
                        i32.eqz
                        if  ;; label = @11
                          local.get 6
                          local.get 5
                          i32.ge_u
                          br_if 1 (;@10;)
                          local.get 4
                          i32.const 1054196
                          i32.load
                          i32.eq
                          br_if 2 (;@9;)
                          local.get 4
                          i32.const 1054192
                          i32.load
                          i32.eq
                          br_if 3 (;@8;)
                          local.get 4
                          call 61
                          br_if 7 (;@4;)
                          local.get 4
                          call 71
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
                        call 71
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
                        call 56
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
                        i32.const 1054200
                        i32.const 1054200
                        i32.load
                        local.get 4
                        local.get 7
                        i32.sub
                        i32.add
                        local.tee 0
                        i32.store
                        i32.const 1054212
                        i32.const 1054212
                        i32.load
                        local.tee 2
                        local.get 5
                        local.get 5
                        local.get 2
                        i32.gt_u
                        select
                        i32.store
                        i32.const 1054204
                        i32.const 1054204
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
                      call 56
                      i32.lt_u
                      br_if 4 (;@5;)
                      local.get 1
                      local.get 5
                      call 78
                      local.set 6
                      local.get 1
                      local.get 5
                      call 48
                      local.get 6
                      local.get 4
                      call 48
                      local.get 6
                      local.get 4
                      call 7
                      br 4 (;@5;)
                    end
                    i32.const 1054188
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
                    call 48
                    local.get 4
                    local.get 6
                    local.get 5
                    i32.sub
                    local.tee 5
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    i32.const 1054188
                    local.get 5
                    i32.store
                    i32.const 1054196
                    local.get 4
                    i32.store
                    br 3 (;@5;)
                  end
                  i32.const 1054184
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
                    call 56
                    i32.lt_u
                    if  ;; label = @9
                      local.get 1
                      local.get 6
                      call 48
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
                    call 48
                    local.get 6
                    local.get 4
                    call 55
                    local.get 7
                    local.get 7
                    i32.load offset=4
                    i32.const -2
                    i32.and
                    i32.store offset=4
                  end
                  i32.const 1054192
                  local.get 6
                  i32.store
                  i32.const 1054184
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
                i32.const 1054176
                i32.const 1054176
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
              call 56
              i32.ge_u
              if  ;; label = @6
                local.get 1
                local.get 5
                call 78
                local.set 4
                local.get 1
                local.get 5
                call 48
                local.get 4
                local.get 6
                call 48
                local.get 4
                local.get 6
                call 7
                br 1 (;@5;)
              end
              local.get 1
              local.get 8
              call 48
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
          call 71
          i32.const -8
          i32.const -4
          local.get 1
          call 64
          select
          i32.add
          local.tee 1
          local.get 3
          local.get 1
          local.get 3
          i32.lt_u
          select
          call 77
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
        call 77
        drop
        local.get 0
        call 2
      end
      local.get 2
      return
    end
    local.get 1
    call 64
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
    i32.const 1049124
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
          call 45
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
                call 45
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
          call 45
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
        call 45
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
          call 72
          br_if 0 (;@3;)
          local.get 0
          i32.load
          local.set 3
          block  ;; label = @4
            local.get 0
            call 64
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
              i32.const 1054192
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
              i32.const 1054184
              local.get 1
              i32.store
              local.get 0
              local.get 1
              local.get 2
              call 50
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
          i32.const 1054176
          i32.const 1054176
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
        call 61
        if  ;; label = @3
          local.get 0
          local.get 1
          local.get 2
          call 50
          br 2 (;@1;)
        end
        block  ;; label = @3
          i32.const 1054196
          i32.load
          local.get 2
          i32.ne
          if  ;; label = @4
            local.get 2
            i32.const 1054192
            i32.load
            i32.ne
            br_if 1 (;@3;)
            i32.const 1054192
            local.get 0
            i32.store
            i32.const 1054184
            i32.const 1054184
            i32.load
            local.get 1
            i32.add
            local.tee 1
            i32.store
            local.get 0
            local.get 1
            call 55
            return
          end
          i32.const 1054196
          local.get 0
          i32.store
          i32.const 1054188
          i32.const 1054188
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
          i32.const 1054192
          i32.load
          i32.ne
          br_if 1 (;@2;)
          i32.const 1054184
          i32.const 0
          i32.store
          i32.const 1054192
          i32.const 0
          i32.store
          return
        end
        local.get 2
        call 71
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
          i32.const 1054176
          i32.const 1054176
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
        call 55
        local.get 0
        i32.const 1054192
        i32.load
        i32.ne
        br_if 1 (;@1;)
        i32.const 1054184
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
    i32.const 1053912
    i32.add
    local.set 2
    block (result i32)  ;; label = @1
      i32.const 1054176
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
      i32.const 1054176
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
            i32.const 1049188
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
              call 56
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
          call 56
          local.set 1
        end
        i32.const 8
        i32.const 8
        call 56
        local.set 3
        i32.const 20
        i32.const 8
        call 56
        local.set 2
        i32.const 16
        i32.const 8
        call 56
        local.set 5
        i32.const 0
        i32.const 16
        i32.const 8
        call 56
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
        call 56
        i32.const -5
        i32.add
        local.get 0
        i32.gt_u
        select
        i32.const 8
        call 56
        local.tee 3
        i32.add
        i32.const 16
        i32.const 8
        call 56
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
          call 56
          local.set 4
          local.get 0
          call 71
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
          call 64
          i32.eqz
          if  ;; label = @4
            local.get 1
            local.get 4
            call 48
            local.get 0
            local.get 2
            call 48
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
        call 64
        br_if 1 (;@1;)
        local.get 1
        call 71
        local.tee 2
        i32.const 16
        i32.const 8
        call 56
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
        call 48
        local.get 0
        local.get 2
        local.get 3
        i32.sub
        local.tee 3
        call 48
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
    call 64
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
            call 24
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
        call 23
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
      call 77
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
        i32.const 1049200
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
        i32.const 1049200
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
      i32.const 1049200
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
        i32.const 1049200
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
        call 32
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
        i32.const 1049194
        i32.const 1049198
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
        i32.const 1049604
        i32.load
        call_indirect (type 0)
        br 1 (;@1;)
      end
      local.get 4
      i32.eqz
      if  ;; label = @2
        local.get 3
        i32.load
        i32.const 1049196
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
      i32.const 1049164
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
      i32.const 1049604
      i32.load
      call_indirect (type 0)
      br_if 0 (;@1;)
      drop
      local.get 2
      i32.load offset=24
      i32.const 1049192
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
    i32.const 1053768
    i32.add
    local.set 3
    local.get 0
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 1054180
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
              call 54
              local.set 2
              local.get 3
              call 71
              local.get 1
              i32.ne
              br_if 1 (;@4;)
              local.get 3
              local.set 2
              br 2 (;@3;)
            end
            i32.const 1054180
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
            call 71
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
        i32.const 1053768
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
        i32.const 1054180
        i32.const 1054180
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
    i32.const 1053904
    i32.load
    local.tee 2
    if  ;; label = @1
      i32.const 1053896
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
    i32.const 1054216
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
      i32.const 1048744
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
    call 59
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 12
      i32.const 4
      call 75
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
    i32.const 1048964
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
  (func (;21;) (type 2) (param i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.const 0
          i32.ge_s
          if  ;; label = @4
            local.get 1
            i32.const -1
            i32.le_s
            br_if 1 (;@3;)
            local.get 0
            local.get 1
            i32.mul
            local.tee 3
            i32.const -1
            i32.le_s
            br_if 2 (;@2;)
            i32.const 1049608
            local.get 3
            i32.store
            block  ;; label = @5
              local.get 3
              i32.eqz
              br_if 0 (;@5;)
              i32.const 24
              local.set 0
              i32.const 510
              local.set 1
              loop  ;; label = @6
                local.get 0
                i32.const 1049588
                i32.add
                i64.const 0
                i64.store align=1
                local.get 1
                local.get 3
                i32.add
                local.tee 4
                i32.const 511
                i32.eq
                br_if 1 (;@5;)
                local.get 0
                i32.const 1049596
                i32.add
                i64.const 0
                i64.store align=1
                local.get 4
                i32.const 512
                i32.eq
                br_if 1 (;@5;)
                local.get 1
                i32.eqz
                br_if 5 (;@1;)
                local.get 0
                i32.const 1049604
                i32.add
                i64.const 0
                i64.store align=1
                local.get 0
                i32.const 24
                i32.add
                local.set 0
                local.get 3
                local.get 1
                i32.const -3
                i32.add
                local.tee 1
                i32.add
                i32.const 510
                i32.ne
                br_if 0 (;@6;)
              end
            end
            local.get 2
            i32.const 16
            i32.add
            global.set 0
            return
          end
          local.get 2
          i32.const 8
          i32.add
          i32.const 1048680
          call 31
          unreachable
        end
        local.get 2
        i32.const 8
        i32.add
        i32.const 1048696
        call 31
        unreachable
      end
      local.get 2
      i32.const 8
      i32.add
      i32.const 1048712
      call 31
      unreachable
    end
    local.get 0
    i32.const 1048588
    call 68
    unreachable)
  (func (;22;) (type 0) (param i32 i32) (result i32)
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
    i32.const 1049576
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
        i32.const 1049199
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
      i32.const 1049124
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
  (func (;23;) (type 6) (param i32 i32 i32)
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
        call 26
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
        call 75
        unreachable
      end
      call 42
      unreachable
    end
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func (;24;) (type 2) (param i32 i32)
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
        call 26
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
        call 75
        unreachable
      end
      call 42
      unreachable
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;25;) (type 11) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 5
    global.set 0
    i32.const 1053764
    i32.const 1053764
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
        i32.const 1054220
        i32.const 1054220
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
        i32.const 1049036
        i32.store offset=12
        local.get 5
        i32.const 1048768
        i32.store offset=8
        i32.const 1053748
        i32.load
        local.tee 2
        i32.const -1
        i32.le_s
        br_if 0 (;@2;)
        i32.const 1053748
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        i32.store
        i32.const 1053748
        i32.const 1053756
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
          i32.const 1053756
          i32.load
          local.get 5
          i32.const 8
          i32.add
          i32.const 1053760
          i32.load
          i32.load offset=20
          call_indirect (type 2)
          i32.const 1053748
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
  (func (;26;) (type 10) (param i32 i32 i32 i32)
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
          call 59
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
  (func (;27;) (type 4) (param i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 3
    global.set 0
    local.get 0
    i32.const 0
    i32.ge_s
    if  ;; label = @1
      i32.const 1049608
      local.get 0
      i32.store
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          i32.eqz
          br_if 0 (;@3;)
          i32.const 24
          local.set 1
          i32.const 510
          local.set 2
          loop  ;; label = @4
            local.get 1
            i32.const 1049588
            i32.add
            i64.const 0
            i64.store align=1
            local.get 0
            local.get 2
            i32.add
            local.tee 4
            i32.const 511
            i32.eq
            br_if 1 (;@3;)
            local.get 1
            i32.const 1049596
            i32.add
            i64.const 0
            i64.store align=1
            local.get 4
            i32.const 512
            i32.eq
            br_if 1 (;@3;)
            local.get 2
            i32.eqz
            br_if 2 (;@2;)
            local.get 1
            i32.const 1049604
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
            i32.const 510
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
      local.get 1
      i32.const 1048588
      call 68
      unreachable
    end
    local.get 3
    i32.const 8
    i32.add
    i32.const 1048664
    call 31
    unreachable)
  (func (;28;) (type 2) (param i32 i32)
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
      i32.const 1048744
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
    i32.const 1048964
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 48
    i32.add
    global.set 0)
  (func (;29;) (type 4) (param i32)
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
          i32.const 1048768
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
      i32.const 1049016
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.load offset=8
      local.get 0
      i32.load offset=8
      local.get 1
      i32.load8_u offset=16
      call 25
      unreachable
    end
    local.get 1
    i32.const 0
    i32.store offset=4
    local.get 1
    local.get 2
    i32.store offset=12
    local.get 1
    i32.const 1048996
    local.get 0
    i32.load offset=4
    local.tee 1
    i32.load offset=8
    local.get 0
    i32.load offset=8
    local.get 1
    i32.load8_u offset=16
    call 25
    unreachable)
  (func (;30;) (type 8)
    (local i32 i32 i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        i32.const 1049608
        i32.load
        local.tee 3
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1049612
        local.set 0
        i32.const 510
        local.set 1
        loop  ;; label = @3
          local.get 0
          local.get 0
          f64.load align=1
          f64.const -0x1p-1 (;=-0.5;)
          f64.mul
          f64.store align=1
          local.get 1
          local.get 3
          i32.add
          local.tee 2
          i32.const 511
          i32.eq
          br_if 1 (;@2;)
          local.get 0
          i32.const 8
          i32.add
          local.tee 4
          local.get 4
          f64.load align=1
          f64.const -0x1p-1 (;=-0.5;)
          f64.mul
          f64.store align=1
          local.get 2
          i32.const 512
          i32.eq
          br_if 1 (;@2;)
          local.get 1
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 16
          i32.add
          local.tee 2
          local.get 2
          f64.load align=1
          f64.const -0x1p-1 (;=-0.5;)
          f64.mul
          f64.store align=1
          local.get 0
          i32.const 24
          i32.add
          local.set 0
          local.get 3
          local.get 1
          i32.const -3
          i32.add
          local.tee 1
          i32.add
          i32.const 510
          i32.ne
          br_if 0 (;@3;)
        end
      end
      return
    end
    i32.const 4104
    i32.const 1048728
    call 68
    unreachable)
  (func (;31;) (type 2) (param i32 i32)
    (local i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 2
    global.set 0
    local.get 2
    i32.const 43
    i32.store offset=12
    local.get 2
    i32.const 1048604
    i32.store offset=8
    local.get 2
    i32.const 1048648
    i32.store offset=20
    local.get 2
    local.get 0
    i32.store offset=16
    local.get 2
    i32.const 36
    i32.add
    i32.const 2
    i32.store
    local.get 2
    i32.const 44
    i32.add
    i32.const 2
    i32.store
    local.get 2
    i32.const 60
    i32.add
    i32.const 19
    i32.store
    local.get 2
    i32.const 1049148
    i32.store offset=32
    local.get 2
    i32.const 0
    i32.store offset=24
    local.get 2
    i32.const 20
    i32.store offset=52
    local.get 2
    local.get 2
    i32.const 48
    i32.add
    i32.store offset=40
    local.get 2
    local.get 2
    i32.const 16
    i32.add
    i32.store offset=56
    local.get 2
    local.get 2
    i32.const 8
    i32.add
    i32.store offset=48
    local.get 2
    i32.const 24
    i32.add
    local.get 1
    call 46
    unreachable)
  (func (;32;) (type 2) (param i32 i32)
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
    i32.const 1049528
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
    i32.const 1049460
    call 46
    unreachable)
  (func (;33;) (type 2) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 4096
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
    i32.const 1049560
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
    call 46
    unreachable)
  (func (;34;) (type 2) (param i32 i32)
    (local i32 i32 i32)
    local.get 0
    local.get 0
    call 80
    local.tee 0
    i32.const 8
    call 56
    local.get 0
    i32.sub
    local.tee 2
    call 78
    local.set 0
    i32.const 1054188
    local.get 1
    local.get 2
    i32.sub
    local.tee 1
    i32.store
    i32.const 1054196
    local.get 0
    i32.store
    local.get 0
    local.get 1
    i32.const 1
    i32.or
    i32.store offset=4
    i32.const 8
    i32.const 8
    call 56
    local.set 2
    i32.const 20
    i32.const 8
    call 56
    local.set 3
    i32.const 16
    i32.const 8
    call 56
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
    i32.const 1054208
    i32.const 2097152
    i32.store)
  (func (;35;) (type 2) (param i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 1
    global.set 0
    i32.const 1053708
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
      i32.const 1048848
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
      i32.const 1048888
      call 46
      unreachable
    end
    local.get 1
    i32.const 48
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
    i32.const 1048744
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
    i32.const 1049400
    local.get 2
    i32.const 8
    i32.add
    call 6
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;38;) (type 0) (param i32 i32) (result i32)
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
    i32.const 1049400
    local.get 2
    i32.const 8
    i32.add
    call 6
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;39;) (type 4) (param i32)
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
        call 47
        unreachable
      end
      i32.const 1048948
      call 40
      unreachable
    end
    i32.const 1048932
    call 40
    unreachable)
  (func (;40;) (type 4) (param i32)
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
    i32.const 1049124
    i32.store offset=16
    local.get 1
    i32.const 0
    i32.store
    local.get 1
    i32.const 43
    i32.store offset=28
    local.get 1
    i32.const 1048768
    i32.store offset=24
    local.get 1
    local.get 1
    i32.const 24
    i32.add
    i32.store offset=8
    local.get 1
    local.get 0
    call 46
    unreachable)
  (func (;41;) (type 1) (param i32 i32 i32) (result i32)
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
      call 23
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
    call 77
    drop
    local.get 0
    local.get 2
    local.get 3
    i32.add
    i32.store offset=8
    i32.const 0)
  (func (;42;) (type 8)
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
    i32.const 1049100
    i32.store offset=16
    local.get 0
    i32.const 1049052
    i32.store offset=24
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i32.const 1049108
    call 46
    unreachable)
  (func (;43;) (type 2) (param i32 i32)
    (local i32 i32)
    local.get 1
    i32.load offset=4
    local.set 2
    local.get 1
    i32.load
    local.set 3
    i32.const 8
    i32.const 4
    call 59
    local.tee 1
    i32.eqz
    if  ;; label = @1
      i32.const 8
      i32.const 4
      call 75
      unreachable
    end
    local.get 1
    local.get 2
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    local.get 0
    i32.const 1048980
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func (;44;) (type 2) (param i32 i32)
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
  (func (;45;) (type 9) (param i32 i32 i32 i32) (result i32)
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
  (func (;46;) (type 2) (param i32 i32)
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
    i32.const 1049128
    i32.store offset=12
    local.get 2
    i32.const 1049124
    i32.store offset=8
    local.get 2
    i32.const 8
    i32.add
    call 39
    unreachable)
  (func (;47;) (type 4) (param i32)
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
    call 29
    unreachable)
  (func (;48;) (type 2) (param i32 i32)
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
  (func (;49;) (type 4) (param i32)
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
  (func (;50;) (type 6) (param i32 i32 i32)
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
  (func (;51;) (type 2) (param i32 i32)
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
  (func (;52;) (type 4) (param i32)
    local.get 0
    i32.load
    if  ;; label = @1
      local.get 0
      i32.const 4
      i32.add
      i32.load
      call 2
    end)
  (func (;53;) (type 3) (param i32) (result i32)
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
  (func (;54;) (type 3) (param i32) (result i32)
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
  (func (;55;) (type 2) (param i32 i32)
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
  (func (;56;) (type 0) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.add
    i32.const -1
    i32.add
    i32.const 0
    local.get 1
    i32.sub
    i32.and)
  (func (;57;) (type 3) (param i32) (result i32)
    local.get 0
    i32.const 1
    i32.shl
    local.tee 0
    i32.const 0
    local.get 0
    i32.sub
    i32.or)
  (func (;58;) (type 0) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 0))
  (func (;59;) (type 0) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 9)
  (func (;60;) (type 2) (param i32 i32)
    local.get 0
    i32.const 1048980
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func (;61;) (type 3) (param i32) (result i32)
    local.get 0
    i32.load8_u offset=4
    i32.const 2
    i32.and
    i32.const 1
    i32.shr_u)
  (func (;62;) (type 0) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call 3)
  (func (;63;) (type 3) (param i32) (result i32)
    i32.const 0
    local.get 0
    i32.sub
    local.get 0
    i32.and)
  (func (;64;) (type 3) (param i32) (result i32)
    local.get 0
    i32.load8_u offset=4
    i32.const 3
    i32.and
    i32.eqz)
  (func (;65;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 3
    i32.or
    i32.store offset=4)
  (func (;66;) (type 3) (param i32) (result i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    i32.add)
  (func (;67;) (type 0) (param i32 i32) (result i32)
    local.get 0
    i32.load
    drop
    loop  ;; label = @1
      br 0 (;@1;)
    end
    unreachable)
  (func (;68;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    call 33
    unreachable)
  (func (;69;) (type 0) (param i32 i32) (result i32)
    local.get 0
    i64.load32_u
    local.get 1
    call 12)
  (func (;70;) (type 1) (param i32 i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 2
    call 8)
  (func (;71;) (type 3) (param i32) (result i32)
    local.get 0
    i32.load offset=4
    i32.const -8
    i32.and)
  (func (;72;) (type 3) (param i32) (result i32)
    local.get 0
    i32.load offset=4
    i32.const 1
    i32.and)
  (func (;73;) (type 3) (param i32) (result i32)
    local.get 0
    i32.load offset=12
    i32.const 1
    i32.and)
  (func (;74;) (type 3) (param i32) (result i32)
    local.get 0
    i32.load offset=12
    i32.const 1
    i32.shr_u)
  (func (;75;) (type 2) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 1053744
    i32.load
    local.tee 0
    i32.const 4
    local.get 0
    select
    call_indirect (type 2)
    unreachable)
  (func (;76;) (type 0) (param i32 i32) (result i32)
    local.get 1
    i32.const 1049424
    i32.const 2
    call 3)
  (func (;77;) (type 1) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call 11)
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
    i32.const 1049608
    i32.load)
  (func (;83;) (type 5) (result i32)
    i32.const 1049612)
  (func (;84;) (type 5) (result i32)
    i32.const 1)
  (func (;85;) (type 5) (result i32)
    i32.const 10)
  (func (;86;) (type 7) (param i32) (result i64)
    i64.const 8330237566129496815)
  (func (;87;) (type 7) (param i32) (result i64)
    i64.const -8527728395957036344)
  (func (;88;) (type 7) (param i32) (result i64)
    i64.const 359314774325844787)
  (func (;89;) (type 4) (param i32)
    nop)
  (table (;0;) 30 30 funcref)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (export "memory" (memory 0))
  (export "length" (func 82))
  (export "resize" (func 27))
  (export "set_dimensions" (func 21))
  (export "get_wasm_memory_buffer_ptr" (func 83))
  (export "input_type" (func 84))
  (export "user_level_type" (func 85))
  (export "apply" (func 30))
  (elem (;0;) (i32.const 1) func 89 22 69 35 89 41 10 36 52 88 87 49 18 28 43 60 86 67 58 62 89 86 8 20 38 70 19 37 76)
  (data (;0;) (i32.const 1048576) "src/lib.rs\00\00\00\00\10\00\0a\00\00\00-\00\00\00\0d\00\00\00called `Result::unwrap()` on an `Err` value\00\01\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\00\00\10\00\0a\00\00\00#\00\00\00\1e\00\00\00\00\00\10\00\0a\00\00\005\00\00\00\11\00\00\00\00\00\10\00\0a\00\00\006\00\00\00\11\00\00\00\00\00\10\00\0a\00\00\007\00\00\00\10\00\00\00\00\00\10\00\0a\00\00\00r\00\00\003\00\00\00\05\00\00\00\04\00\00\00\04\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00called `Option::unwrap()` on a `None` valuememory allocation of  bytes failed\0a\00\00\eb\00\10\00\15\00\00\00\00\01\10\00\0e\00\00\00library/std/src/alloc.rs \01\10\00\18\00\00\00U\01\00\00\09\00\00\00library/std/src/panicking.rsH\01\10\00\1c\00\00\00>\02\00\00\0f\00\00\00H\01\10\00\1c\00\00\00=\02\00\00\0f\00\00\00\09\00\00\00\0c\00\00\00\04\00\00\00\0a\00\00\00\05\00\00\00\08\00\00\00\04\00\00\00\0b\00\00\00\0c\00\00\00\10\00\00\00\04\00\00\00\0d\00\00\00\0e\00\00\00\05\00\00\00\08\00\00\00\04\00\00\00\0f\00\00\00\10\00\00\00\05\00\00\00\00\00\00\00\01\00\00\00\11\00\00\00library/alloc/src/raw_vec.rscapacity overflow\00\00\00\f8\01\10\00\11\00\00\00\dc\01\10\00\1c\00\00\00\06\02\00\00\05\00\00\00)\00\00\00\15\00\00\00\00\00\00\00\01\00\00\00\16\00\00\00: \00\00$\02\10\00\00\00\00\008\02\10\00\02\00\00\00\15\00\00\00\0c\00\00\00\04\00\00\00\17\00\00\00\18\00\00\00\19\00\00\00    ,\0a, (\0a(,00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\15\00\00\00\04\00\00\00\04\00\00\00\1a\00\00\00\1b\00\00\00\1c\00\00\00()library/core/src/slice/memchr.rs\00\00R\03\10\00 \00\00\00h\00\00\00'\00\00\00range start index  out of range for slice of length \84\03\10\00\12\00\00\00\96\03\10\00\22\00\00\00range end index \c8\03\10\00\10\00\00\00\96\03\10\00\22\00\00\00TryFromIntError\00\15\00\00\00\04\00\00\00\04\00\00\00\1d")
  (data (;1;) (i32.const 1049608) "\05"))
