(component
  (core module (;0;)
    (type (;0;) (func))
    (func (;0;) (type 0))
    (export "the_entrypoint" (func 0))
    (@producers
      (processed-by "wit-component" "$CARGO_PKG_VERSION")
      (processed-by "my-fake-bindgen" "123.45")
    )
  )
  (core module (;1;)
    (type (;0;) (func))
    (import "__main_module__" "the_entrypoint" (func $entry (;0;) (type 0)))
    (export "entrypoint" (func $entry))
  )
  (core instance (;0;) (instantiate 0))
  (alias core export 0 "the_entrypoint" (core func (;0;)))
  (core instance (;1;)
    (export "the_entrypoint" (func 0))
  )
  (core instance (;2;) (instantiate 1
      (with "__main_module__" (instance 1))
    )
  )
  (type (;0;) (func))
  (alias core export 2 "entrypoint" (core func (;1;)))
  (func (;0;) (type 0) (canon lift (core func 1)))
  (@producers
    (processed-by "wit-component" "$CARGO_PKG_VERSION")
  )
  (export (;1;) "entrypoint" (func 0))
)