(component
  (core module (;0;)
    (type (;0;) (func))
    (type (;1;) (func (param i32 i32 i32 i32) (result i32)))
    (func (;0;) (type 0)
      unreachable
    )
    (func (;1;) (type 1) (param i32 i32 i32 i32) (result i32)
      unreachable
    )
    (memory (;0;) 0)
    (export "test:foo/foo#f" (func 0))
    (export "memory" (memory 0))
    (export "cabi_realloc" (func 1))
    (@producers
      (processed-by "wit-component" "0.11.0")
    )
  )
  (core instance (;0;) (instantiate 0))
  (alias core export 0 "memory" (core memory (;0;)))
  (alias core export 0 "cabi_realloc" (core func (;0;)))
  (type (;0;) (func))
  (alias core export 0 "test:foo/foo#f" (core func (;1;)))
  (func (;0;) (type 0) (canon lift (core func 1)))
  (component (;0;)
    (type (;0;) (func))
    (import "import-func-f" (func (;0;) (type 0)))
    (type (;1;) (func))
    (export (;1;) "f" (func 0) (func (type 1)))
  )
  (instance (;0;) (instantiate 0
      (with "import-func-f" (func 0))
    )
  )
  (@producers
    (processed-by "wit-component" "0.11.0")
  )
  (export (;1;) (interface "test:foo/foo") (instance 0))
)