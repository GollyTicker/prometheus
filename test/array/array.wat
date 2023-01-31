(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (param i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32 i32) (result i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func (param i32)))
  (type (;5;) (func (param i32 i32 i32)))
  (type (;6;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;7;) (func (param i32) (result i64)))
  (type (;8;) (func (param i32 i32 i32 i32)))
  (type (;9;) (func))
  (type (;10;) (func (param i32 i32 i32 i32 i32)))
  (type (;11;) (func (result i32)))
  (type (;12;) (func (param i64 i32) (result i32)))
  (import "wbg" "__wbg_alert_4d619d201f8b0c48" (func (;0;) (type 0)))
  (func (;1;) (type 3) (param i32) (result i32)
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
          call 54
          local.set 6
          i32.const 20
          i32.const 8
          call 54
          local.set 5
          i32.const 16
          i32.const 8
          call 54
          local.set 1
          i32.const 0
          i32.const 16
          i32.const 8
          call 54
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
          call 54
          local.set 4
          i32.const 1049828
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
              i32.const 1049416
              i32.add
              i32.load
              local.tee 0
              if  ;; label = @6
                local.get 4
                local.get 6
                call 52
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
              i32.const 1049828
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
              i32.const 1049416
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
              call 51
              local.tee 0
              br_if 0 (;@5;)
            end
            local.get 1
            i32.eqz
            br_if 2 (;@2;)
          end
          i32.const 1049832
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
          call 76
          local.set 6
          local.get 0
          call 16
          block  ;; label = @4
            local.get 3
            i32.const 16
            i32.const 8
            call 54
            i32.ge_u
            if  ;; label = @5
              local.get 0
              local.get 4
              call 65
              local.get 6
              local.get 3
              call 53
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
              i32.const 1049560
              i32.add
              local.set 5
              block (result i32)  ;; label = @6
                i32.const 1049824
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
                i32.const 1049824
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
            call 49
          end
          local.get 0
          call 78
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
        call 54
        i32.const -5
        i32.add
        local.get 0
        i32.gt_u
        select
        i32.const 8
        call 54
        local.set 4
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block (result i32)  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    i32.const 1049824
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
                      i32.const 1049832
                      i32.load
                      i32.le_u
                      br_if 7 (;@2;)
                      local.get 2
                      br_if 1 (;@8;)
                      i32.const 1049828
                      i32.load
                      local.tee 0
                      i32.eqz
                      br_if 7 (;@2;)
                      local.get 0
                      call 63
                      i32.ctz
                      i32.const 2
                      i32.shl
                      i32.const 1049416
                      i32.add
                      i32.load
                      local.tee 1
                      call 70
                      local.get 4
                      i32.sub
                      local.set 3
                      local.get 1
                      call 51
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
                          call 51
                          local.tee 0
                          br_if 0 (;@11;)
                        end
                      end
                      local.get 1
                      local.tee 0
                      local.get 4
                      call 76
                      local.set 5
                      local.get 0
                      call 16
                      local.get 3
                      i32.const 16
                      i32.const 8
                      call 54
                      i32.lt_u
                      br_if 5 (;@4;)
                      local.get 0
                      local.get 4
                      call 65
                      local.get 5
                      local.get 3
                      call 53
                      i32.const 1049832
                      i32.load
                      local.tee 1
                      i32.eqz
                      br_if 4 (;@5;)
                      local.get 1
                      i32.const -8
                      i32.and
                      i32.const 1049560
                      i32.add
                      local.set 7
                      i32.const 1049840
                      i32.load
                      local.set 6
                      i32.const 1049824
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
                      i32.const 1049568
                      i32.add
                      i32.load
                      local.tee 5
                      i32.const 8
                      i32.add
                      i32.load
                      local.tee 2
                      local.get 0
                      i32.const 1049560
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
                      i32.const 1049824
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
                    call 49
                    local.get 5
                    call 78
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
                    call 63
                    i32.ctz
                    local.tee 2
                    i32.const 3
                    i32.shl
                    local.tee 0
                    i32.const 1049568
                    i32.add
                    i32.load
                    local.tee 3
                    i32.const 8
                    i32.add
                    i32.load
                    local.tee 1
                    local.get 0
                    i32.const 1049560
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
                    i32.const 1049824
                    i32.const 1049824
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
                  call 76
                  local.tee 5
                  local.get 2
                  i32.const 3
                  i32.shl
                  local.get 4
                  i32.sub
                  local.tee 2
                  call 53
                  i32.const 1049832
                  i32.load
                  local.tee 0
                  if  ;; label = @8
                    local.get 0
                    i32.const -8
                    i32.and
                    i32.const 1049560
                    i32.add
                    local.set 7
                    i32.const 1049840
                    i32.load
                    local.set 6
                    block (result i32)  ;; label = @9
                      i32.const 1049824
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
                      i32.const 1049824
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
                  i32.const 1049840
                  local.get 5
                  i32.store
                  i32.const 1049832
                  local.get 2
                  i32.store
                  local.get 3
                  call 78
                  local.set 3
                  br 6 (;@1;)
                end
                i32.const 1049824
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
            i32.const 1049840
            local.get 5
            i32.store
            i32.const 1049832
            local.get 3
            i32.store
            br 1 (;@3;)
          end
          local.get 0
          local.get 3
          local.get 4
          i32.add
          call 49
        end
        local.get 0
        call 78
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
                      i32.const 1049832
                      i32.load
                      local.tee 0
                      local.get 4
                      i32.lt_u
                      if  ;; label = @10
                        i32.const 1049836
                        i32.load
                        local.tee 0
                        local.get 4
                        i32.gt_u
                        br_if 2 (;@8;)
                        local.get 11
                        i32.const 8
                        i32.const 8
                        call 54
                        local.get 4
                        i32.add
                        i32.const 20
                        i32.const 8
                        call 54
                        i32.add
                        i32.const 16
                        i32.const 8
                        call 54
                        i32.add
                        i32.const 65536
                        call 54
                        call 40
                        local.get 11
                        i32.load
                        local.tee 8
                        br_if 1 (;@9;)
                        i32.const 0
                        local.set 3
                        br 9 (;@1;)
                      end
                      i32.const 1049840
                      i32.load
                      local.set 2
                      local.get 0
                      local.get 4
                      i32.sub
                      local.tee 1
                      i32.const 16
                      i32.const 8
                      call 54
                      i32.lt_u
                      if  ;; label = @10
                        i32.const 1049840
                        i32.const 0
                        i32.store
                        i32.const 1049832
                        i32.load
                        local.set 0
                        i32.const 1049832
                        i32.const 0
                        i32.store
                        local.get 2
                        local.get 0
                        call 49
                        local.get 2
                        call 78
                        local.set 3
                        br 9 (;@1;)
                      end
                      local.get 2
                      local.get 4
                      call 76
                      local.set 0
                      i32.const 1049832
                      local.get 1
                      i32.store
                      i32.const 1049840
                      local.get 0
                      i32.store
                      local.get 0
                      local.get 1
                      call 53
                      local.get 2
                      local.get 4
                      call 65
                      local.get 2
                      call 78
                      local.set 3
                      br 8 (;@1;)
                    end
                    local.get 11
                    i32.load offset=8
                    local.set 12
                    i32.const 1049848
                    local.get 11
                    i32.load offset=4
                    local.tee 10
                    i32.const 1049848
                    i32.load
                    i32.add
                    local.tee 1
                    i32.store
                    i32.const 1049852
                    i32.const 1049852
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
                        i32.const 1049844
                        i32.load
                        if  ;; label = @11
                          i32.const 1049544
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
                        i32.const 1049860
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
                      i32.const 1049844
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
                    i32.const 1049860
                    i32.const 1049860
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
                    i32.const 1049544
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
                      i32.const 1049844
                      i32.load
                      local.set 9
                      i32.const 1049544
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
                      call 54
                      local.tee 15
                      i32.sub
                      i32.const -23
                      i32.add
                      local.tee 1
                      call 78
                      local.tee 0
                      i32.const 8
                      call 54
                      local.get 0
                      i32.sub
                      local.get 1
                      i32.add
                      local.tee 0
                      local.get 0
                      i32.const 16
                      i32.const 8
                      call 54
                      local.get 9
                      i32.add
                      i32.lt_u
                      select
                      local.tee 13
                      call 78
                      local.set 14
                      local.get 13
                      local.get 15
                      call 76
                      local.set 0
                      i32.const 8
                      i32.const 8
                      call 54
                      local.set 3
                      i32.const 20
                      i32.const 8
                      call 54
                      local.set 5
                      i32.const 16
                      i32.const 8
                      call 54
                      local.set 2
                      i32.const 1049844
                      local.get 8
                      local.get 8
                      call 78
                      local.tee 1
                      i32.const 8
                      call 54
                      local.get 1
                      i32.sub
                      local.tee 1
                      call 76
                      local.tee 7
                      i32.store
                      i32.const 1049836
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
                      call 54
                      local.set 5
                      i32.const 20
                      i32.const 8
                      call 54
                      local.set 2
                      i32.const 16
                      i32.const 8
                      call 54
                      local.set 1
                      local.get 7
                      local.get 3
                      call 76
                      local.get 1
                      local.get 2
                      local.get 5
                      i32.const 8
                      i32.sub
                      i32.add
                      i32.add
                      i32.store offset=4
                      i32.const 1049856
                      i32.const 2097152
                      i32.store
                      local.get 13
                      local.get 15
                      call 65
                      i32.const 1049544
                      i64.load align=4
                      local.set 16
                      local.get 14
                      i32.const 8
                      i32.add
                      i32.const 1049552
                      i64.load align=4
                      i64.store align=4
                      local.get 14
                      local.get 16
                      i64.store align=4
                      i32.const 1049556
                      local.get 12
                      i32.store
                      i32.const 1049548
                      local.get 10
                      i32.store
                      i32.const 1049544
                      local.get 8
                      i32.store
                      i32.const 1049552
                      local.get 14
                      i32.store
                      loop  ;; label = @10
                        local.get 0
                        i32.const 4
                        call 76
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
                      call 76
                      call 48
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
                      i32.const 1049560
                      i32.add
                      local.set 2
                      block (result i32)  ;; label = @10
                        i32.const 1049824
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
                        i32.const 1049824
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
                    call 78
                    local.tee 5
                    i32.const 8
                    call 54
                    local.set 2
                    local.get 3
                    call 78
                    local.tee 1
                    i32.const 8
                    call 54
                    local.set 0
                    local.get 8
                    local.get 2
                    local.get 5
                    i32.sub
                    i32.add
                    local.tee 6
                    local.get 4
                    call 76
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
                    i32.const 1049844
                    i32.load
                    local.get 0
                    i32.ne
                    if  ;; label = @9
                      local.get 0
                      i32.const 1049840
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
                        i32.const 1049824
                        i32.const 1049824
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
                      call 76
                      local.set 0
                      br 5 (;@4;)
                    end
                    i32.const 1049844
                    local.get 7
                    i32.store
                    i32.const 1049836
                    i32.const 1049836
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
                    call 78
                    local.set 3
                    br 7 (;@1;)
                  end
                  i32.const 1049836
                  local.get 0
                  local.get 4
                  i32.sub
                  local.tee 1
                  i32.store
                  i32.const 1049844
                  i32.const 1049844
                  i32.load
                  local.tee 2
                  local.get 4
                  call 76
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
                  call 78
                  local.set 3
                  br 6 (;@1;)
                end
                i32.const 1049860
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
              i32.const 1049844
              i32.load
              i32.const 1049836
              i32.load
              local.get 10
              i32.add
              call 30
              br 3 (;@2;)
            end
            i32.const 1049840
            local.get 7
            i32.store
            i32.const 1049832
            i32.const 1049832
            i32.load
            local.get 4
            i32.add
            local.tee 0
            i32.store
            local.get 7
            local.get 0
            call 53
            local.get 6
            call 78
            local.set 3
            br 3 (;@1;)
          end
          local.get 7
          local.get 4
          local.get 0
          call 48
          local.get 4
          i32.const 256
          i32.ge_u
          if  ;; label = @4
            local.get 7
            local.get 4
            call 15
            local.get 6
            call 78
            local.set 3
            br 3 (;@1;)
          end
          local.get 4
          i32.const -8
          i32.and
          i32.const 1049560
          i32.add
          local.set 2
          block (result i32)  ;; label = @4
            i32.const 1049824
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
            i32.const 1049824
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
          call 78
          local.set 3
          br 2 (;@1;)
        end
        i32.const 1049864
        i32.const 4095
        i32.store
        i32.const 1049556
        local.get 12
        i32.store
        i32.const 1049548
        local.get 10
        i32.store
        i32.const 1049544
        local.get 8
        i32.store
        i32.const 1049572
        i32.const 1049560
        i32.store
        i32.const 1049580
        i32.const 1049568
        i32.store
        i32.const 1049568
        i32.const 1049560
        i32.store
        i32.const 1049588
        i32.const 1049576
        i32.store
        i32.const 1049576
        i32.const 1049568
        i32.store
        i32.const 1049596
        i32.const 1049584
        i32.store
        i32.const 1049584
        i32.const 1049576
        i32.store
        i32.const 1049604
        i32.const 1049592
        i32.store
        i32.const 1049592
        i32.const 1049584
        i32.store
        i32.const 1049612
        i32.const 1049600
        i32.store
        i32.const 1049600
        i32.const 1049592
        i32.store
        i32.const 1049620
        i32.const 1049608
        i32.store
        i32.const 1049608
        i32.const 1049600
        i32.store
        i32.const 1049628
        i32.const 1049616
        i32.store
        i32.const 1049616
        i32.const 1049608
        i32.store
        i32.const 1049636
        i32.const 1049624
        i32.store
        i32.const 1049624
        i32.const 1049616
        i32.store
        i32.const 1049632
        i32.const 1049624
        i32.store
        i32.const 1049644
        i32.const 1049632
        i32.store
        i32.const 1049640
        i32.const 1049632
        i32.store
        i32.const 1049652
        i32.const 1049640
        i32.store
        i32.const 1049648
        i32.const 1049640
        i32.store
        i32.const 1049660
        i32.const 1049648
        i32.store
        i32.const 1049656
        i32.const 1049648
        i32.store
        i32.const 1049668
        i32.const 1049656
        i32.store
        i32.const 1049664
        i32.const 1049656
        i32.store
        i32.const 1049676
        i32.const 1049664
        i32.store
        i32.const 1049672
        i32.const 1049664
        i32.store
        i32.const 1049684
        i32.const 1049672
        i32.store
        i32.const 1049680
        i32.const 1049672
        i32.store
        i32.const 1049692
        i32.const 1049680
        i32.store
        i32.const 1049688
        i32.const 1049680
        i32.store
        i32.const 1049700
        i32.const 1049688
        i32.store
        i32.const 1049708
        i32.const 1049696
        i32.store
        i32.const 1049696
        i32.const 1049688
        i32.store
        i32.const 1049716
        i32.const 1049704
        i32.store
        i32.const 1049704
        i32.const 1049696
        i32.store
        i32.const 1049724
        i32.const 1049712
        i32.store
        i32.const 1049712
        i32.const 1049704
        i32.store
        i32.const 1049732
        i32.const 1049720
        i32.store
        i32.const 1049720
        i32.const 1049712
        i32.store
        i32.const 1049740
        i32.const 1049728
        i32.store
        i32.const 1049728
        i32.const 1049720
        i32.store
        i32.const 1049748
        i32.const 1049736
        i32.store
        i32.const 1049736
        i32.const 1049728
        i32.store
        i32.const 1049756
        i32.const 1049744
        i32.store
        i32.const 1049744
        i32.const 1049736
        i32.store
        i32.const 1049764
        i32.const 1049752
        i32.store
        i32.const 1049752
        i32.const 1049744
        i32.store
        i32.const 1049772
        i32.const 1049760
        i32.store
        i32.const 1049760
        i32.const 1049752
        i32.store
        i32.const 1049780
        i32.const 1049768
        i32.store
        i32.const 1049768
        i32.const 1049760
        i32.store
        i32.const 1049788
        i32.const 1049776
        i32.store
        i32.const 1049776
        i32.const 1049768
        i32.store
        i32.const 1049796
        i32.const 1049784
        i32.store
        i32.const 1049784
        i32.const 1049776
        i32.store
        i32.const 1049804
        i32.const 1049792
        i32.store
        i32.const 1049792
        i32.const 1049784
        i32.store
        i32.const 1049812
        i32.const 1049800
        i32.store
        i32.const 1049800
        i32.const 1049792
        i32.store
        i32.const 1049820
        i32.const 1049808
        i32.store
        i32.const 1049808
        i32.const 1049800
        i32.store
        i32.const 1049816
        i32.const 1049808
        i32.store
        i32.const 8
        i32.const 8
        call 54
        local.set 5
        i32.const 20
        i32.const 8
        call 54
        local.set 2
        i32.const 16
        i32.const 8
        call 54
        local.set 1
        i32.const 1049844
        local.get 8
        local.get 8
        call 78
        local.tee 0
        i32.const 8
        call 54
        local.get 0
        i32.sub
        local.tee 0
        call 76
        local.tee 3
        i32.store
        i32.const 1049836
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
        call 54
        local.set 2
        i32.const 20
        i32.const 8
        call 54
        local.set 1
        i32.const 16
        i32.const 8
        call 54
        local.set 0
        local.get 3
        local.get 5
        call 76
        local.get 0
        local.get 1
        local.get 2
        i32.const 8
        i32.sub
        i32.add
        i32.add
        i32.store offset=4
        i32.const 1049856
        i32.const 2097152
        i32.store
      end
      i32.const 0
      local.set 3
      i32.const 1049836
      i32.load
      local.tee 0
      local.get 4
      i32.le_u
      br_if 0 (;@1;)
      i32.const 1049836
      local.get 0
      local.get 4
      i32.sub
      local.tee 1
      i32.store
      i32.const 1049844
      i32.const 1049844
      i32.load
      local.tee 2
      local.get 4
      call 76
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
      call 78
      local.set 3
    end
    local.get 11
    i32.const 16
    i32.add
    global.set 0
    local.get 3)
  (func (;2;) (type 1) (param i32 i32) (result i32)
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
  (func (;3;) (type 4) (param i32)
    (local i32 i32 i32 i32 i32)
    local.get 0
    call 79
    local.tee 0
    local.get 0
    call 70
    local.tee 2
    call 76
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
            call 64
            i32.eqz
            if  ;; label = @5
              local.get 2
              local.get 3
              i32.add
              local.set 2
              local.get 0
              local.get 3
              call 77
              local.tee 0
              i32.const 1049840
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
              i32.const 1049832
              local.get 2
              i32.store
              local.get 0
              local.get 2
              local.get 1
              call 48
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
          i32.const 1049824
          i32.const 1049824
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
          call 62
          if  ;; label = @4
            local.get 0
            local.get 2
            local.get 1
            call 48
            br 1 (;@3;)
          end
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                i32.const 1049844
                i32.load
                local.get 1
                i32.ne
                if  ;; label = @7
                  local.get 1
                  i32.const 1049840
                  i32.load
                  i32.ne
                  br_if 1 (;@6;)
                  i32.const 1049840
                  local.get 0
                  i32.store
                  i32.const 1049832
                  i32.const 1049832
                  i32.load
                  local.get 2
                  i32.add
                  local.tee 1
                  i32.store
                  local.get 0
                  local.get 1
                  call 53
                  return
                end
                i32.const 1049844
                local.get 0
                i32.store
                i32.const 1049836
                i32.const 1049836
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
                i32.const 1049840
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
                i32.const 1049824
                i32.const 1049824
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
              call 53
              local.get 0
              i32.const 1049840
              i32.load
              i32.ne
              br_if 2 (;@3;)
              i32.const 1049832
              local.get 2
              i32.store
              br 3 (;@2;)
            end
            i32.const 1049832
            i32.const 0
            i32.store
            i32.const 1049840
            i32.const 0
            i32.store
          end
          i32.const 1049856
          i32.load
          local.get 1
          i32.ge_u
          br_if 1 (;@2;)
          i32.const 8
          i32.const 8
          call 54
          local.set 0
          i32.const 20
          i32.const 8
          call 54
          local.set 1
          i32.const 16
          i32.const 8
          call 54
          local.set 3
          i32.const 0
          i32.const 16
          i32.const 8
          call 54
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
          i32.const 1049844
          i32.load
          i32.eqz
          br_if 1 (;@2;)
          i32.const 8
          i32.const 8
          call 54
          local.set 0
          i32.const 20
          i32.const 8
          call 54
          local.set 1
          i32.const 16
          i32.const 8
          call 54
          local.set 2
          i32.const 0
          block  ;; label = @4
            i32.const 1049836
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
            i32.const 1049844
            i32.load
            local.set 1
            i32.const 1049544
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
          i32.const 1049836
          i32.load
          i32.const 1049856
          i32.load
          i32.le_u
          br_if 1 (;@2;)
          i32.const 1049856
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
        i32.const 1049864
        i32.const 1049864
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
    i32.const 1049560
    i32.add
    local.set 1
    block (result i32)  ;; label = @1
      i32.const 1049824
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
      i32.const 1049824
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
  (func (;4;) (type 2) (param i32 i32 i32) (result i32)
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
              call 2
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
                call_indirect (type 1)
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
            call_indirect (type 2)
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
              call_indirect (type 1)
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
        call_indirect (type 2)
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
    call_indirect (type 2))
  (func (;5;) (type 6) (param i32 i32 i32 i32) (result i32)
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
            call 10
            local.tee 2
            br_if 1 (;@3;)
            i32.const 0
            return
          end
          i32.const 8
          i32.const 8
          call 54
          local.set 1
          i32.const 20
          i32.const 8
          call 54
          local.set 5
          i32.const 16
          i32.const 8
          call 54
          local.set 4
          i32.const 0
          local.set 2
          i32.const 0
          i32.const 16
          i32.const 8
          call 54
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
          call 54
          i32.const -5
          i32.add
          local.get 3
          i32.gt_u
          select
          i32.const 8
          call 54
          local.set 5
          local.get 0
          call 79
          local.tee 1
          local.get 1
          call 70
          local.tee 6
          call 76
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
                          i32.const 1049844
                          i32.load
                          i32.eq
                          br_if 2 (;@9;)
                          local.get 4
                          i32.const 1049840
                          i32.load
                          i32.eq
                          br_if 3 (;@8;)
                          local.get 4
                          call 62
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
                        call 54
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
                        call 76
                        i32.const 7
                        i32.store offset=4
                        local.get 1
                        local.get 0
                        i32.const -12
                        i32.add
                        call 76
                        i32.const 0
                        i32.store offset=4
                        i32.const 1049848
                        i32.const 1049848
                        i32.load
                        local.get 4
                        local.get 7
                        i32.sub
                        i32.add
                        local.tee 0
                        i32.store
                        i32.const 1049860
                        i32.const 1049860
                        i32.load
                        local.tee 2
                        local.get 5
                        local.get 5
                        local.get 2
                        i32.gt_u
                        select
                        i32.store
                        i32.const 1049852
                        i32.const 1049852
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
                      call 54
                      i32.lt_u
                      br_if 4 (;@5;)
                      local.get 1
                      local.get 5
                      call 76
                      local.set 6
                      local.get 1
                      local.get 5
                      call 45
                      local.get 6
                      local.get 4
                      call 45
                      local.get 6
                      local.get 4
                      call 8
                      br 4 (;@5;)
                    end
                    i32.const 1049836
                    i32.load
                    local.get 6
                    i32.add
                    local.tee 6
                    local.get 5
                    i32.le_u
                    br_if 4 (;@4;)
                    local.get 1
                    local.get 5
                    call 76
                    local.set 4
                    local.get 1
                    local.get 5
                    call 45
                    local.get 4
                    local.get 6
                    local.get 5
                    i32.sub
                    local.tee 5
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    i32.const 1049836
                    local.get 5
                    i32.store
                    i32.const 1049844
                    local.get 4
                    i32.store
                    br 3 (;@5;)
                  end
                  i32.const 1049832
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
                    call 54
                    i32.lt_u
                    if  ;; label = @9
                      local.get 1
                      local.get 6
                      call 45
                      i32.const 0
                      local.set 4
                      i32.const 0
                      local.set 6
                      br 1 (;@8;)
                    end
                    local.get 1
                    local.get 5
                    call 76
                    local.tee 6
                    local.get 4
                    call 76
                    local.set 7
                    local.get 1
                    local.get 5
                    call 45
                    local.get 6
                    local.get 4
                    call 53
                    local.get 7
                    local.get 7
                    i32.load offset=4
                    i32.const -2
                    i32.and
                    i32.store offset=4
                  end
                  i32.const 1049840
                  local.get 6
                  i32.store
                  i32.const 1049832
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
                i32.const 1049824
                i32.const 1049824
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
              call 54
              i32.ge_u
              if  ;; label = @6
                local.get 1
                local.get 5
                call 76
                local.set 4
                local.get 1
                local.get 5
                call 45
                local.get 4
                local.get 6
                call 45
                local.get 4
                local.get 6
                call 8
                br 1 (;@5;)
              end
              local.get 1
              local.get 8
              call 45
            end
            local.get 1
            br_if 3 (;@1;)
          end
          local.get 3
          call 1
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
          call 64
          select
          i32.add
          local.tee 1
          local.get 3
          local.get 1
          local.get 3
          i32.lt_u
          select
          call 75
          local.get 0
          call 3
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
        call 75
        drop
        local.get 0
        call 3
      end
      local.get 2
      return
    end
    local.get 1
    call 64
    drop
    local.get 1
    call 78)
  (func (;6;) (type 2) (param i32 i32 i32) (result i32)
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
    i32.const 1049112
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
          call 41
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
                call 41
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
              call_indirect (type 1)
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
          call 41
          br_if 1 (;@2;)
          local.get 0
          local.get 1
          local.get 2
          local.get 6
          i32.load offset=12
          call_indirect (type 2)
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
              call_indirect (type 1)
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
        call 41
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
            call_indirect (type 1)
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
        call_indirect (type 2)
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
    call_indirect (type 2))
  (func (;7;) (type 2) (param i32 i32 i32) (result i32)
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
                call_indirect (type 2)
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
              call_indirect (type 1)
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
              call_indirect (type 2)
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
                i32.const 22
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
                i32.const 22
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
            call_indirect (type 1)
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
          call_indirect (type 2)
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
  (func (;8;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32)
    local.get 0
    local.get 1
    call 76
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
            call 64
            i32.eqz
            if  ;; label = @5
              local.get 1
              local.get 3
              i32.add
              local.set 1
              local.get 0
              local.get 3
              call 77
              local.tee 0
              i32.const 1049840
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
              i32.const 1049832
              local.get 1
              i32.store
              local.get 0
              local.get 1
              local.get 2
              call 48
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
          i32.const 1049824
          i32.const 1049824
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
        call 62
        if  ;; label = @3
          local.get 0
          local.get 1
          local.get 2
          call 48
          br 2 (;@1;)
        end
        block  ;; label = @3
          i32.const 1049844
          i32.load
          local.get 2
          i32.ne
          if  ;; label = @4
            local.get 2
            i32.const 1049840
            i32.load
            i32.ne
            br_if 1 (;@3;)
            i32.const 1049840
            local.get 0
            i32.store
            i32.const 1049832
            i32.const 1049832
            i32.load
            local.get 1
            i32.add
            local.tee 1
            i32.store
            local.get 0
            local.get 1
            call 53
            return
          end
          i32.const 1049844
          local.get 0
          i32.store
          i32.const 1049836
          i32.const 1049836
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
          i32.const 1049840
          i32.load
          i32.ne
          br_if 1 (;@2;)
          i32.const 1049832
          i32.const 0
          i32.store
          i32.const 1049840
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
          i32.const 1049824
          i32.const 1049824
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
        call 53
        local.get 0
        i32.const 1049840
        i32.load
        i32.ne
        br_if 1 (;@1;)
        i32.const 1049832
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
    i32.const 1049560
    i32.add
    local.set 2
    block (result i32)  ;; label = @1
      i32.const 1049824
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
      i32.const 1049824
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
  (func (;9;) (type 0) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 5
    global.set 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 1
              i32.const 12
              i32.add
              i32.load
              local.tee 3
              if  ;; label = @6
                local.get 1
                i32.load offset=8
                local.set 7
                local.get 3
                i32.const -1
                i32.add
                i32.const 536870911
                i32.and
                local.tee 3
                i32.const 1
                i32.add
                local.tee 6
                i32.const 7
                i32.and
                local.set 4
                block (result i32)  ;; label = @7
                  local.get 3
                  i32.const 7
                  i32.lt_u
                  if  ;; label = @8
                    i32.const 0
                    local.set 3
                    local.get 7
                    br 1 (;@7;)
                  end
                  local.get 7
                  i32.const 60
                  i32.add
                  local.set 2
                  local.get 6
                  i32.const 1073741816
                  i32.and
                  local.set 6
                  i32.const 0
                  local.set 3
                  loop  ;; label = @8
                    local.get 2
                    i32.load
                    local.get 2
                    i32.const -8
                    i32.add
                    i32.load
                    local.get 2
                    i32.const -16
                    i32.add
                    i32.load
                    local.get 2
                    i32.const -24
                    i32.add
                    i32.load
                    local.get 2
                    i32.const -32
                    i32.add
                    i32.load
                    local.get 2
                    i32.const -40
                    i32.add
                    i32.load
                    local.get 2
                    i32.const -48
                    i32.add
                    i32.load
                    local.get 2
                    i32.const -56
                    i32.add
                    i32.load
                    local.get 3
                    i32.add
                    i32.add
                    i32.add
                    i32.add
                    i32.add
                    i32.add
                    i32.add
                    i32.add
                    local.set 3
                    local.get 2
                    i32.const -64
                    i32.sub
                    local.set 2
                    local.get 6
                    i32.const -8
                    i32.add
                    local.tee 6
                    br_if 0 (;@8;)
                  end
                  local.get 2
                  i32.const -60
                  i32.add
                end
                local.set 2
                local.get 4
                if  ;; label = @7
                  local.get 2
                  i32.const 4
                  i32.add
                  local.set 2
                  loop  ;; label = @8
                    local.get 2
                    i32.load
                    local.get 3
                    i32.add
                    local.set 3
                    local.get 2
                    i32.const 8
                    i32.add
                    local.set 2
                    local.get 4
                    i32.const -1
                    i32.add
                    local.tee 4
                    br_if 0 (;@8;)
                  end
                end
                local.get 1
                i32.const 20
                i32.add
                i32.load
                br_if 1 (;@5;)
                local.get 3
                local.set 4
                br 3 (;@3;)
              end
              i32.const 0
              local.set 3
              local.get 1
              i32.const 20
              i32.add
              i32.load
              br_if 1 (;@4;)
              i32.const 1
              local.set 2
              br 4 (;@1;)
            end
            local.get 7
            i32.load offset=4
            br_if 0 (;@4;)
            local.get 3
            i32.const 16
            i32.lt_u
            br_if 2 (;@2;)
          end
          local.get 3
          local.get 3
          i32.add
          local.tee 4
          local.get 3
          i32.lt_u
          br_if 1 (;@2;)
        end
        local.get 4
        i32.eqz
        br_if 0 (;@2;)
        block  ;; label = @3
          local.get 4
          i32.const -1
          i32.gt_s
          if  ;; label = @4
            local.get 4
            i32.const 1
            call 60
            local.tee 2
            i32.eqz
            br_if 1 (;@3;)
            local.get 4
            local.set 3
            br 3 (;@1;)
          end
          call 38
          unreachable
        end
        local.get 4
        i32.const 1
        call 74
        unreachable
      end
      i32.const 1
      local.set 2
      i32.const 0
      local.set 3
    end
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store
    local.get 5
    local.get 0
    i32.store offset=12
    local.get 5
    i32.const 32
    i32.add
    local.get 1
    i32.const 16
    i32.add
    i64.load align=4
    i64.store
    local.get 5
    i32.const 24
    i32.add
    local.get 1
    i32.const 8
    i32.add
    i64.load align=4
    i64.store
    local.get 5
    local.get 1
    i64.load align=4
    i64.store offset=16
    local.get 5
    i32.const 12
    i32.add
    i32.const 1048908
    local.get 5
    i32.const 16
    i32.add
    call 7
    if  ;; label = @1
      local.get 5
      i32.const 40
      i32.add
      call 29
      unreachable
    end
    local.get 5
    i32.const 48
    i32.add
    global.set 0)
  (func (;10;) (type 1) (param i32 i32) (result i32)
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
              call 54
              local.get 1
              i32.gt_u
              br_if 1 (;@4;)
              br 2 (;@3;)
            end
            local.get 0
            call 1
            local.set 4
            br 2 (;@2;)
          end
          i32.const 16
          i32.const 8
          call 54
          local.set 1
        end
        i32.const 8
        i32.const 8
        call 54
        local.set 3
        i32.const 20
        i32.const 8
        call 54
        local.set 2
        i32.const 16
        i32.const 8
        call 54
        local.set 5
        i32.const 0
        i32.const 16
        i32.const 8
        call 54
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
        call 54
        i32.const -5
        i32.add
        local.get 0
        i32.gt_u
        select
        i32.const 8
        call 54
        local.tee 3
        i32.add
        i32.const 16
        i32.const 8
        call 54
        i32.add
        i32.const -4
        i32.add
        call 1
        local.tee 2
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        call 79
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
          call 79
          local.set 2
          i32.const 16
          i32.const 8
          call 54
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
          call 64
          i32.eqz
          if  ;; label = @4
            local.get 1
            local.get 4
            call 45
            local.get 0
            local.get 2
            call 45
            local.get 0
            local.get 2
            call 8
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
        call 70
        local.tee 2
        i32.const 16
        i32.const 8
        call 54
        local.get 3
        i32.add
        i32.le_u
        br_if 1 (;@1;)
        local.get 1
        local.get 3
        call 76
        local.set 0
        local.get 1
        local.get 3
        call 45
        local.get 0
        local.get 2
        local.get 3
        i32.sub
        local.tee 3
        call 45
        local.get 0
        local.get 3
        call 8
        br 1 (;@1;)
      end
      local.get 4
      return
    end
    local.get 1
    call 78
    local.get 1
    call 64
    drop)
  (func (;11;) (type 1) (param i32 i32) (result i32)
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
            call 21
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
        call 19
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
      call 75
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
  (func (;12;) (type 0) (param i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    block  ;; label = @1
      block (result i32)  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 128
            i32.ge_u
            if  ;; label = @5
              local.get 2
              i32.const 0
              i32.store offset=12
              local.get 1
              i32.const 2048
              i32.lt_u
              br_if 1 (;@4;)
              local.get 1
              i32.const 65536
              i32.ge_u
              br_if 2 (;@3;)
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
              br 3 (;@2;)
            end
            local.get 0
            i32.load offset=8
            local.tee 3
            local.get 0
            i32.load
            i32.eq
            if  ;; label = @5
              local.get 0
              local.get 3
              call 22
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
            br 3 (;@1;)
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
          br 1 (;@2;)
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
        call 20
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
      call 75
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
    global.set 0)
  (func (;13;) (type 2) (param i32 i32 i32) (result i32)
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
  (func (;14;) (type 12) (param i64 i32) (result i32)
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
        i32.const 1049148
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
        i32.const 1049148
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
      i32.const 1049148
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
        i32.const 1049148
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
    call 6
    local.get 4
    i32.const 48
    i32.add
    global.set 0)
  (func (;15;) (type 0) (param i32 i32)
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
    i32.const 1049416
    i32.add
    local.set 3
    local.get 0
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 1049828
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
              call 52
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
            i32.const 1049828
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
        i32.const 1049416
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
        i32.const 1049828
        i32.const 1049828
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
  (func (;17;) (type 11) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 1049552
    i32.load
    local.tee 2
    if  ;; label = @1
      i32.const 1049544
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
    i32.const 1049864
    local.get 5
    i32.const 4095
    local.get 5
    i32.const 4095
    i32.gt_u
    select
    i32.store
    local.get 8)
  (func (;18;) (type 0) (param i32 i32)
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
      i32.const 1048600
      local.get 2
      i32.const 24
      i32.add
      call 7
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
    call 60
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
    i32.const 1048820
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 48
    i32.add
    global.set 0)
  (func (;19;) (type 5) (param i32 i32 i32)
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
      call 38
      unreachable
    end
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func (;20;) (type 5) (param i32 i32 i32)
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
        call 24
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
      call 38
      unreachable
    end
    local.get 3
    i32.const 32
    i32.add
    global.set 0)
  (func (;21;) (type 0) (param i32 i32)
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
      call 38
      unreachable
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;22;) (type 0) (param i32 i32)
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
        call 24
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
      call 38
      unreachable
    end
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;23;) (type 10) (param i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 5
    global.set 0
    i32.const 1049412
    i32.const 1049412
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
        i32.const 1049868
        i32.const 1049868
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
        i32.const 1048892
        i32.store offset=12
        local.get 5
        i32.const 1048624
        i32.store offset=8
        i32.const 1049396
        i32.load
        local.tee 2
        i32.const -1
        i32.le_s
        br_if 0 (;@2;)
        i32.const 1049396
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        i32.store
        i32.const 1049396
        i32.const 1049404
        i32.load
        if (result i32)  ;; label = @3
          local.get 5
          local.get 0
          local.get 1
          i32.load offset=16
          call_indirect (type 0)
          local.get 5
          local.get 5
          i64.load
          i64.store offset=8
          i32.const 1049404
          i32.load
          local.get 5
          i32.const 8
          i32.add
          i32.const 1049408
          i32.load
          i32.load offset=20
          call_indirect (type 0)
          i32.const 1049396
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
  (func (;24;) (type 8) (param i32 i32 i32 i32)
    block  ;; label = @1
      local.get 2
      if  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block (result i32)  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  local.get 1
                  i32.const 0
                  i32.ge_s
                  if  ;; label = @8
                    local.get 3
                    i32.load offset=8
                    br_if 1 (;@7;)
                    local.get 1
                    br_if 2 (;@6;)
                    i32.const 1
                    local.set 2
                    br 4 (;@4;)
                  end
                  br 6 (;@1;)
                end
                local.get 3
                i32.load offset=4
                local.tee 2
                i32.eqz
                if  ;; label = @7
                  local.get 1
                  i32.eqz
                  if  ;; label = @8
                    i32.const 1
                    local.set 2
                    br 4 (;@4;)
                  end
                  local.get 1
                  i32.const 1
                  call 60
                  br 2 (;@5;)
                end
                local.get 3
                i32.load
                local.get 2
                i32.const 1
                local.get 1
                call 55
                br 1 (;@5;)
              end
              local.get 1
              i32.const 1
              call 60
            end
            local.tee 2
            i32.eqz
            br_if 1 (;@3;)
          end
          local.get 0
          local.get 2
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
        i32.const 1
        i32.store
        local.get 0
        i32.const 1
        i32.store
        return
      end
      local.get 0
      local.get 1
      i32.store offset=4
    end
    local.get 0
    i32.const 8
    i32.add
    i32.const 0
    i32.store
    local.get 0
    i32.const 1
    i32.store)
  (func (;25;) (type 8) (param i32 i32 i32 i32)
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
              call 55
              br 2 (;@3;)
            end
            local.get 1
            br_if 0 (;@4;)
            local.get 2
            br 1 (;@3;)
          end
          local.get 1
          local.get 2
          call 60
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
  (func (;26;) (type 0) (param i32 i32)
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
      i32.const 1048600
      local.get 2
      i32.const 24
      i32.add
      call 7
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
    i32.const 1048820
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
    local.get 2
    i32.const 48
    i32.add
    global.set 0)
  (func (;27;) (type 4) (param i32)
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
          i32.const 1048624
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
      i32.const 1048872
      local.get 0
      i32.load offset=4
      local.tee 1
      i32.load offset=8
      local.get 0
      i32.load offset=8
      local.get 1
      i32.load8_u offset=16
      call 23
      unreachable
    end
    local.get 1
    i32.const 0
    i32.store offset=4
    local.get 1
    local.get 2
    i32.store offset=12
    local.get 1
    i32.const 1048852
    local.get 0
    i32.load offset=4
    local.tee 1
    i32.load offset=8
    local.get 0
    i32.load offset=8
    local.get 1
    i32.load8_u offset=16
    call 23
    unreachable)
  (func (;28;) (type 0) (param i32 i32)
    (local i32 i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    i32.const 1
    i32.store offset=36
    local.get 2
    local.get 2
    i32.const 8
    i32.add
    i32.store offset=32
    local.get 2
    i32.const 1
    i32.store offset=60
    local.get 2
    i32.const 2
    i32.store offset=52
    local.get 2
    i32.const 1048584
    i32.store offset=48
    local.get 2
    i32.const 0
    i32.store offset=40
    local.get 2
    local.get 2
    i32.const 32
    i32.add
    i32.store offset=56
    local.get 2
    i32.const 16
    i32.add
    local.get 2
    i32.const 40
    i32.add
    call 9
    local.get 2
    i32.load offset=20
    local.tee 3
    local.get 2
    i32.load offset=24
    call 0
    local.get 2
    i32.load offset=16
    if  ;; label = @1
      local.get 3
      call 3
    end
    local.get 1
    if  ;; label = @1
      local.get 0
      call 3
    end
    local.get 2
    i32.const -64
    i32.sub
    global.set 0)
  (func (;29;) (type 4) (param i32)
    (local i32)
    global.get 0
    i32.const -64
    i32.add
    local.tee 1
    global.set 0
    local.get 1
    i32.const 51
    i32.store offset=12
    local.get 1
    i32.const 1049004
    i32.store offset=8
    local.get 1
    i32.const 1049056
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
    i32.const 23
    i32.store
    local.get 1
    i32.const 1049132
    i32.store offset=32
    local.get 1
    i32.const 0
    i32.store offset=24
    local.get 1
    i32.const 24
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
    i32.const 1049096
    call 42
    unreachable)
  (func (;30;) (type 0) (param i32 i32)
    (local i32 i32 i32)
    local.get 0
    local.get 0
    call 78
    local.tee 0
    i32.const 8
    call 54
    local.get 0
    i32.sub
    local.tee 2
    call 76
    local.set 0
    i32.const 1049836
    local.get 1
    local.get 2
    i32.sub
    local.tee 1
    i32.store
    i32.const 1049844
    local.get 0
    i32.store
    local.get 0
    local.get 1
    i32.const 1
    i32.or
    i32.store offset=4
    i32.const 8
    i32.const 8
    call 54
    local.set 2
    i32.const 20
    i32.const 8
    call 54
    local.set 3
    i32.const 16
    i32.const 8
    call 54
    local.set 4
    local.get 0
    local.get 1
    call 76
    local.get 4
    local.get 3
    local.get 2
    i32.const 8
    i32.sub
    i32.add
    i32.add
    i32.store offset=4
    i32.const 1049856
    i32.const 2097152
    i32.store)
  (func (;31;) (type 0) (param i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 1
    global.set 0
    i32.const 1049356
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
      i32.const 1048704
      i32.store offset=16
      local.get 1
      i32.const 0
      i32.store offset=8
      local.get 1
      i32.const 2
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
      i32.const 1048744
      call 42
      unreachable
    end
    local.get 1
    i32.const 48
    i32.add
    global.set 0)
  (func (;32;) (type 1) (param i32 i32) (result i32)
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
    i32.const 1048600
    local.get 2
    i32.const 8
    i32.add
    call 7
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;33;) (type 1) (param i32 i32) (result i32)
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
    i32.const 1048908
    local.get 2
    i32.const 8
    i32.add
    call 7
    local.get 2
    i32.const 32
    i32.add
    global.set 0)
  (func (;34;) (type 4) (param i32)
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
        call 44
        unreachable
      end
      i32.const 1048804
      call 35
      unreachable
    end
    i32.const 1048788
    call 35
    unreachable)
  (func (;35;) (type 4) (param i32)
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
    i32.const 1049112
    i32.store offset=16
    local.get 1
    i32.const 0
    i32.store
    local.get 1
    i32.const 43
    i32.store offset=28
    local.get 1
    i32.const 1048624
    i32.store offset=24
    local.get 1
    local.get 1
    i32.const 24
    i32.add
    i32.store offset=8
    local.get 1
    local.get 0
    call 42
    unreachable)
  (func (;36;) (type 2) (param i32 i32 i32) (result i32)
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
      call 19
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
    call 75
    drop
    local.get 0
    local.get 2
    local.get 3
    i32.add
    i32.store offset=8
    i32.const 0)
  (func (;37;) (type 2) (param i32 i32 i32) (result i32)
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
      call 20
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
    call 75
    drop
    local.get 0
    local.get 2
    local.get 3
    i32.add
    i32.store offset=8
    i32.const 0)
  (func (;38;) (type 9)
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
    i32.const 1048980
    i32.store offset=16
    local.get 0
    i32.const 1048932
    i32.store offset=24
    local.get 0
    i32.const 0
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i32.const 1048988
    call 42
    unreachable)
  (func (;39;) (type 0) (param i32 i32)
    (local i32 i32)
    local.get 1
    i32.load offset=4
    local.set 2
    local.get 1
    i32.load
    local.set 3
    i32.const 8
    i32.const 4
    call 60
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
    i32.const 1048836
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func (;40;) (type 0) (param i32 i32)
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
  (func (;41;) (type 6) (param i32 i32 i32 i32) (result i32)
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
          call_indirect (type 1)
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
    call_indirect (type 2))
  (func (;42;) (type 0) (param i32 i32)
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
    i32.const 1049112
    i32.store offset=12
    local.get 2
    i32.const 1049112
    i32.store offset=8
    local.get 2
    i32.const 8
    i32.add
    call 34
    unreachable)
  (func (;43;) (type 3) (param i32) (result i32)
    block  ;; label = @1
      local.get 0
      i32.const 2147483644
      i32.gt_u
      br_if 0 (;@1;)
      local.get 0
      i32.eqz
      if  ;; label = @2
        i32.const 4
        return
      end
      local.get 0
      local.get 0
      i32.const 2147483645
      i32.lt_u
      i32.const 2
      i32.shl
      call 60
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      return
    end
    unreachable)
  (func (;44;) (type 4) (param i32)
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
    call 27
    unreachable)
  (func (;45;) (type 0) (param i32 i32)
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
  (func (;46;) (type 4) (param i32)
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
      call 3
    end)
  (func (;47;) (type 2) (param i32 i32 i32) (result i32)
    block  ;; label = @1
      local.get 1
      i32.const 2147483644
      i32.le_u
      if  ;; label = @2
        local.get 0
        local.get 1
        i32.const 4
        local.get 2
        call 55
        local.tee 0
        br_if 1 (;@1;)
      end
      unreachable
    end
    local.get 0)
  (func (;48;) (type 5) (param i32 i32 i32)
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
  (func (;49;) (type 0) (param i32 i32)
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
  (func (;50;) (type 4) (param i32)
    local.get 0
    i32.load
    if  ;; label = @1
      local.get 0
      i32.const 4
      i32.add
      i32.load
      call 3
    end)
  (func (;51;) (type 3) (param i32) (result i32)
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
  (func (;52;) (type 3) (param i32) (result i32)
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
  (func (;53;) (type 0) (param i32 i32)
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
  (func (;54;) (type 1) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.add
    i32.const -1
    i32.add
    i32.const 0
    local.get 1
    i32.sub
    i32.and)
  (func (;55;) (type 6) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call 5)
  (func (;56;) (type 3) (param i32) (result i32)
    local.get 0
    i32.const 1
    i32.shl
    local.tee 0
    i32.const 0
    local.get 0
    i32.sub
    i32.or)
  (func (;57;) (type 1) (param i32 i32) (result i32)
    local.get 1
    i32.load
    i32.const 1049348
    i32.const 5
    local.get 1
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 2))
  (func (;58;) (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    local.get 0
    i32.load offset=4
    i32.load offset=12
    call_indirect (type 1))
  (func (;59;) (type 1) (param i32 i32) (result i32)
    local.get 1
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call 4)
  (func (;60;) (type 1) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 10)
  (func (;61;) (type 0) (param i32 i32)
    local.get 0
    i32.const 1048836
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func (;62;) (type 3) (param i32) (result i32)
    local.get 0
    i32.load8_u offset=4
    i32.const 2
    i32.and
    i32.const 1
    i32.shr_u)
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
  (func (;65;) (type 0) (param i32 i32)
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
  (func (;67;) (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    local.get 1
    call 12
    i32.const 0)
  (func (;68;) (type 1) (param i32 i32) (result i32)
    local.get 0
    i32.load
    drop
    loop  ;; label = @1
      br 0 (;@1;)
    end
    unreachable)
  (func (;69;) (type 1) (param i32 i32) (result i32)
    local.get 0
    i64.load32_u
    local.get 1
    call 14)
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
  (func (;74;) (type 0) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 1049392
    i32.load
    local.tee 0
    i32.const 3
    local.get 0
    select
    call_indirect (type 0)
    unreachable)
  (func (;75;) (type 2) (param i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    call 13)
  (func (;76;) (type 1) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.add)
  (func (;77;) (type 1) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.sub)
  (func (;78;) (type 3) (param i32) (result i32)
    local.get 0
    i32.const 8
    i32.add)
  (func (;79;) (type 3) (param i32) (result i32)
    local.get 0
    i32.const -8
    i32.add)
  (func (;80;) (type 7) (param i32) (result i64)
    i64.const 8330237566129496815)
  (func (;81;) (type 7) (param i32) (result i64)
    i64.const -8527728395957036344)
  (func (;82;) (type 7) (param i32) (result i64)
    i64.const 359314774325844787)
  (func (;83;) (type 4) (param i32)
    nop)
  (table (;0;) 27 27 funcref)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (export "memory" (memory 0))
  (export "greet" (func 28))
  (export "__wbindgen_malloc" (func 43))
  (export "__wbindgen_realloc" (func 47))
  (elem (;0;) (i32.const 1) func 59 69 31 83 36 11 32 50 82 81 46 18 26 39 61 80 83 37 67 33 57 68 58 59 83 80)
  (data (;0;) (i32.const 1048576) "Hello, !\00\00\10\00\07\00\00\00\07\00\10\00\01\00\00\00\04\00\00\00\04\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00called `Option::unwrap()` on a `None` valuememory allocation of  bytes failed\0a\00\00[\00\10\00\15\00\00\00p\00\10\00\0e\00\00\00library/std/src/alloc.rs\90\00\10\00\18\00\00\00U\01\00\00\09\00\00\00library/std/src/panicking.rs\b8\00\10\00\1c\00\00\00>\02\00\00\0f\00\00\00\b8\00\10\00\1c\00\00\00=\02\00\00\0f\00\00\00\08\00\00\00\0c\00\00\00\04\00\00\00\09\00\00\00\04\00\00\00\08\00\00\00\04\00\00\00\0a\00\00\00\0b\00\00\00\10\00\00\00\04\00\00\00\0c\00\00\00\0d\00\00\00\04\00\00\00\08\00\00\00\04\00\00\00\0e\00\00\00\0f\00\00\00\04\00\00\00\00\00\00\00\01\00\00\00\10\00\00\00\11\00\00\00\04\00\00\00\04\00\00\00\12\00\00\00\13\00\00\00\14\00\00\00library/alloc/src/raw_vec.rscapacity overflow\00\00\00\80\01\10\00\11\00\00\00d\01\10\00\1c\00\00\00\06\02\00\00\05\00\00\00a formatting trait implementation returned an error\00\11\00\00\00\00\00\00\00\01\00\00\00\15\00\00\00library/alloc/src/fmt.rs\f0\01\10\00\18\00\00\00d\02\00\00\09\00\00\00\19\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00: \00\00\18\02\10\00\00\00\00\00(\02\10\00\02\00\00\0000010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899Error"))
