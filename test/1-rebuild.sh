set -eu

build-wasm-function() {
  NAME="$1"
  (
    cd "test/functions/$NAME"
    # requires installation of rust+wasm first:
    # https://developer.mozilla.org/en-US/docs/WebAssembly/Rust_to_wasm
    rm -rf pkg/*
    wasm-pack build --target web
    wasm2wat pkg/wasm_fn_bg.wasm -o "../../lib/$NAME.wat"
  )
}

for x in $(ls test/functions); do
  echo "========== Compiling function '$x' =========="
  build-wasm-function "$x"
done

echo "========== Compiling go code =========="
go build cmd/prometheus/main.go
