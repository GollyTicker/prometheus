set -eu
(
  cd test/array
  # requires installation of rust+wasm first:
  # https://developer.mozilla.org/en-US/docs/WebAssembly/Rust_to_wasm
  wasm-pack build --target web
  wasm2wat pkg/array_bg.wasm -o array.wat

  # todo. next steps. use this wasm module from inside go and try to use arrays there.
)
go build cmd/prometheus/main.go
