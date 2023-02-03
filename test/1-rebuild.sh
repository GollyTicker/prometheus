set -eu
(
  cd test/array
  # requires installation of rust+wasm first:
  # https://developer.mozilla.org/en-US/docs/WebAssembly/Rust_to_wasm
  rm -rf pkg/*
  wasm-pack build --target web
  wasm2wat pkg/array_bg.wasm -o ../lib/array.wat
)

go build cmd/prometheus/main.go
