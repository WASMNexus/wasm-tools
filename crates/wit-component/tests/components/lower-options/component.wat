(component
  (type (;0;) (record (field "s" string)))
  (type (;1;) (record (field "s" u32)))
  (type (;2;) (variant (case "s" string)))
  (type (;3;) (variant (case "s" u32)))
  (type (;4;) (func))
  (type (;5;) (list string))
  (type (;6;) (func (param "x" 5)))
  (type (;7;) (func (param "x" 0)))
  (type (;8;) (func (param "x" 2)))
  (type (;9;) (func (param "x" 1)))
  (type (;10;) (func (param "x" 3)))
  (type (;11;) (list 0))
  (type (;12;) (func (param "x" 11)))
  (type (;13;) (list 2))
  (type (;14;) (func (param "x" 13)))
  (type (;15;) (list u32))
  (type (;16;) (func (param "x" 15)))
  (type (;17;) (func (param "x" u32)))
  (type (;18;) (tuple u32 u32))
  (type (;19;) (func (result 18)))
  (type (;20;) (func (result string)))
  (type (;21;) (func (result 15)))
  (type (;22;) (func (result u32)))
  (type (;23;) (func (result 2)))
  (type (;24;) (list 3))
  (type (;25;) (func (result 24)))
  (type (;26;)
    (instance
      (alias outer 1 0 (type (;0;)))
      (export "r" (type (eq 0)))
      (alias outer 1 1 (type (;1;)))
      (export "r-no-string" (type (eq 1)))
      (alias outer 1 2 (type (;2;)))
      (export "v" (type (eq 2)))
      (alias outer 1 3 (type (;3;)))
      (export "v-no-string" (type (eq 3)))
      (alias outer 1 4 (type (;4;)))
      (export "a" (func (type 4)))
      (alias outer 1 6 (type (;5;)))
      (export "b" (func (type 5)))
      (alias outer 1 7 (type (;6;)))
      (export "c" (func (type 6)))
      (alias outer 1 8 (type (;7;)))
      (export "d" (func (type 7)))
      (alias outer 1 9 (type (;8;)))
      (export "e" (func (type 8)))
      (alias outer 1 10 (type (;9;)))
      (export "f" (func (type 9)))
      (alias outer 1 12 (type (;10;)))
      (export "g" (func (type 10)))
      (alias outer 1 14 (type (;11;)))
      (export "h" (func (type 11)))
      (alias outer 1 16 (type (;12;)))
      (export "i" (func (type 12)))
      (alias outer 1 17 (type (;13;)))
      (export "j" (func (type 13)))
      (alias outer 1 19 (type (;14;)))
      (export "k" (func (type 14)))
      (alias outer 1 20 (type (;15;)))
      (export "l" (func (type 15)))
      (alias outer 1 21 (type (;16;)))
      (export "m" (func (type 16)))
      (alias outer 1 22 (type (;17;)))
      (export "n" (func (type 17)))
      (alias outer 1 23 (type (;18;)))
      (export "o" (func (type 18)))
      (alias outer 1 25 (type (;19;)))
      (export "p" (func (type 19)))
    )
  )
  (import "foo" (instance (;0;) (type 26)))
  (core module (;0;)
    (type (;0;) (func))
    (type (;1;) (func (param i32 i32)))
    (type (;2;) (func (param i32 i32 i32)))
    (type (;3;) (func (param i32)))
    (type (;4;) (func (result i32)))
    (type (;5;) (func (param i32 i32 i32 i32) (result i32)))
    (import "foo" "a" (func (;0;) (type 0)))
    (import "foo" "b" (func (;1;) (type 1)))
    (import "foo" "c" (func (;2;) (type 1)))
    (import "foo" "d" (func (;3;) (type 2)))
    (import "foo" "e" (func (;4;) (type 3)))
    (import "foo" "f" (func (;5;) (type 1)))
    (import "foo" "g" (func (;6;) (type 1)))
    (import "foo" "h" (func (;7;) (type 1)))
    (import "foo" "i" (func (;8;) (type 1)))
    (import "foo" "j" (func (;9;) (type 3)))
    (import "foo" "k" (func (;10;) (type 3)))
    (import "foo" "l" (func (;11;) (type 3)))
    (import "foo" "m" (func (;12;) (type 3)))
    (import "foo" "n" (func (;13;) (type 4)))
    (import "foo" "o" (func (;14;) (type 3)))
    (import "foo" "p" (func (;15;) (type 3)))
    (func (;16;) (type 5) (param i32 i32 i32 i32) (result i32)
      unreachable
    )
    (memory (;0;) 1)
    (export "memory" (memory 0))
    (export "cabi_realloc" (func 16))
  )
  (core module (;1;)
    (type (;0;) (func (param i32 i32)))
    (type (;1;) (func (param i32 i32 i32)))
    (type (;2;) (func (param i32)))
    (func $indirect-foo-b (;0;) (type 0) (param i32 i32)
      local.get 0
      local.get 1
      i32.const 0
      call_indirect (type 0)
    )
    (func $indirect-foo-c (;1;) (type 0) (param i32 i32)
      local.get 0
      local.get 1
      i32.const 1
      call_indirect (type 0)
    )
    (func $indirect-foo-d (;2;) (type 1) (param i32 i32 i32)
      local.get 0
      local.get 1
      local.get 2
      i32.const 2
      call_indirect (type 1)
    )
    (func $indirect-foo-g (;3;) (type 0) (param i32 i32)
      local.get 0
      local.get 1
      i32.const 3
      call_indirect (type 0)
    )
    (func $indirect-foo-h (;4;) (type 0) (param i32 i32)
      local.get 0
      local.get 1
      i32.const 4
      call_indirect (type 0)
    )
    (func $indirect-foo-i (;5;) (type 0) (param i32 i32)
      local.get 0
      local.get 1
      i32.const 5
      call_indirect (type 0)
    )
    (func $indirect-foo-k (;6;) (type 2) (param i32)
      local.get 0
      i32.const 6
      call_indirect (type 2)
    )
    (func $indirect-foo-l (;7;) (type 2) (param i32)
      local.get 0
      i32.const 7
      call_indirect (type 2)
    )
    (func $indirect-foo-m (;8;) (type 2) (param i32)
      local.get 0
      i32.const 8
      call_indirect (type 2)
    )
    (func $indirect-foo-o (;9;) (type 2) (param i32)
      local.get 0
      i32.const 9
      call_indirect (type 2)
    )
    (func $indirect-foo-p (;10;) (type 2) (param i32)
      local.get 0
      i32.const 10
      call_indirect (type 2)
    )
    (table (;0;) 11 11 funcref)
    (export "0" (func $indirect-foo-b))
    (export "1" (func $indirect-foo-c))
    (export "2" (func $indirect-foo-d))
    (export "3" (func $indirect-foo-g))
    (export "4" (func $indirect-foo-h))
    (export "5" (func $indirect-foo-i))
    (export "6" (func $indirect-foo-k))
    (export "7" (func $indirect-foo-l))
    (export "8" (func $indirect-foo-m))
    (export "9" (func $indirect-foo-o))
    (export "10" (func $indirect-foo-p))
    (export "$imports" (table 0))
  )
  (core module (;2;)
    (type (;0;) (func (param i32 i32)))
    (type (;1;) (func (param i32 i32 i32)))
    (type (;2;) (func (param i32)))
    (import "" "0" (func (;0;) (type 0)))
    (import "" "1" (func (;1;) (type 0)))
    (import "" "2" (func (;2;) (type 1)))
    (import "" "3" (func (;3;) (type 0)))
    (import "" "4" (func (;4;) (type 0)))
    (import "" "5" (func (;5;) (type 0)))
    (import "" "6" (func (;6;) (type 2)))
    (import "" "7" (func (;7;) (type 2)))
    (import "" "8" (func (;8;) (type 2)))
    (import "" "9" (func (;9;) (type 2)))
    (import "" "10" (func (;10;) (type 2)))
    (import "" "$imports" (table (;0;) 11 11 funcref))
    (elem (;0;) (i32.const 0) func 0 1 2 3 4 5 6 7 8 9 10)
  )
  (core instance (;0;) (instantiate 1))
  (alias core export 0 "0" (core func (;0;)))
  (alias core export 0 "1" (core func (;1;)))
  (alias core export 0 "2" (core func (;2;)))
  (alias core export 0 "3" (core func (;3;)))
  (alias core export 0 "4" (core func (;4;)))
  (alias core export 0 "5" (core func (;5;)))
  (alias core export 0 "6" (core func (;6;)))
  (alias core export 0 "7" (core func (;7;)))
  (alias core export 0 "8" (core func (;8;)))
  (alias core export 0 "9" (core func (;9;)))
  (alias core export 0 "10" (core func (;10;)))
  (alias export 0 "a" (func (;0;)))
  (core func (;11;) (canon lower (func 0)))
  (alias export 0 "e" (func (;1;)))
  (core func (;12;) (canon lower (func 1)))
  (alias export 0 "f" (func (;2;)))
  (core func (;13;) (canon lower (func 2)))
  (alias export 0 "j" (func (;3;)))
  (core func (;14;) (canon lower (func 3)))
  (alias export 0 "n" (func (;4;)))
  (core func (;15;) (canon lower (func 4)))
  (core instance (;1;)
    (export "b" (func 0))
    (export "c" (func 1))
    (export "d" (func 2))
    (export "g" (func 3))
    (export "h" (func 4))
    (export "i" (func 5))
    (export "k" (func 6))
    (export "l" (func 7))
    (export "m" (func 8))
    (export "o" (func 9))
    (export "p" (func 10))
    (export "a" (func 11))
    (export "e" (func 12))
    (export "f" (func 13))
    (export "j" (func 14))
    (export "n" (func 15))
  )
  (core instance (;2;) (instantiate 0
      (with "foo" (instance 1))
    )
  )
  (alias core export 2 "memory" (core memory (;0;)))
  (alias core export 2 "cabi_realloc" (core func (;16;)))
  (alias core export 0 "$imports" (core table (;0;)))
  (alias export 0 "b" (func (;5;)))
  (core func (;17;) (canon lower (func 5) (memory 0) string-encoding=utf8))
  (alias export 0 "c" (func (;6;)))
  (core func (;18;) (canon lower (func 6) (memory 0) string-encoding=utf8))
  (alias export 0 "d" (func (;7;)))
  (core func (;19;) (canon lower (func 7) (memory 0) string-encoding=utf8))
  (alias export 0 "g" (func (;8;)))
  (core func (;20;) (canon lower (func 8) (memory 0) string-encoding=utf8))
  (alias export 0 "h" (func (;9;)))
  (core func (;21;) (canon lower (func 9) (memory 0) string-encoding=utf8))
  (alias export 0 "i" (func (;10;)))
  (core func (;22;) (canon lower (func 10) (memory 0)))
  (alias export 0 "k" (func (;11;)))
  (core func (;23;) (canon lower (func 11) (memory 0)))
  (alias export 0 "l" (func (;12;)))
  (core func (;24;) (canon lower (func 12) (memory 0) (realloc 16) string-encoding=utf8))
  (alias export 0 "m" (func (;13;)))
  (core func (;25;) (canon lower (func 13) (memory 0) (realloc 16)))
  (alias export 0 "o" (func (;14;)))
  (core func (;26;) (canon lower (func 14) (memory 0) (realloc 16) string-encoding=utf8))
  (alias export 0 "p" (func (;15;)))
  (core func (;27;) (canon lower (func 15) (memory 0) (realloc 16)))
  (core instance (;3;)
    (export "$imports" (table 0))
    (export "0" (func 17))
    (export "1" (func 18))
    (export "2" (func 19))
    (export "3" (func 20))
    (export "4" (func 21))
    (export "5" (func 22))
    (export "6" (func 23))
    (export "7" (func 24))
    (export "8" (func 25))
    (export "9" (func 26))
    (export "10" (func 27))
  )
  (core instance (;4;) (instantiate 2
      (with "" (instance 3))
    )
  )
)