use wasm_bindgen::prelude::*;

const WASM_MEMORY_BUFFER_SIZE: usize = 2;

// This memory is allocated inside WASM - and the host
// will copy contents into it, so that wasm can work with it.
// This syntax [T; N] means a fixed-size array
// of elements of type T of length N.
static mut WASM_MEMORY_BUFFER: [u8; WASM_MEMORY_BUFFER_SIZE] = [0; WASM_MEMORY_BUFFER_SIZE];

// Example usage functions

#[wasm_bindgen]
pub fn store_value_in_wasm_memory_buffer(x: u8) {
    unsafe {
        WASM_MEMORY_BUFFER[0] = x;
    }
}

// The pointer in wasm-memory-space to our above buffer.
// Needed for the host to write data into it.
#[wasm_bindgen]
pub fn get_wasm_memory_buffer_ptr() -> *const u8 {
    let ptr: *const u8;
    unsafe {
        ptr = WASM_MEMORY_BUFFER.as_ptr();
    }
    return ptr;
}

#[wasm_bindgen]
pub fn read_wasm_memory_buffer() -> u8 {
    unsafe {
        return WASM_MEMORY_BUFFER[0];
    }
}
