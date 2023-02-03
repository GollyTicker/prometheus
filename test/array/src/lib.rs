use wasm_bindgen::prelude::*;

const WASM_MEMORY_BUFFER_SIZE: usize = 10;

// This memory is allocated inside WASM - and the host
// will copy contents into it, so that wasm can work with it.
// This syntax [T; N] means a fixed-size array
// of elements of type T of length N.
static mut WASM_MEMORY_BUFFER: [u32; WASM_MEMORY_BUFFER_SIZE] = [0; WASM_MEMORY_BUFFER_SIZE];
// todo. we should use a byte-array as communication channel
// and use an encoding/decoding on this side as well.

// Example usage functions

#[wasm_bindgen]
pub fn store_value_in_wasm_memory_buffer(x: u32) {
    unsafe {
        WASM_MEMORY_BUFFER[0] = x;
    }
}

#[wasm_bindgen]
pub fn length() -> i32 {
    return WASM_MEMORY_BUFFER_SIZE as i32;
}

// The pointer in wasm-memory-space to our above buffer.
// Needed for the host to write data into it.
#[wasm_bindgen]
pub fn get_wasm_memory_buffer_ptr() -> *const i32 {
    let ptr: *const i32;
    unsafe {
        ptr = WASM_MEMORY_BUFFER.as_ptr() as *const i32;
    }
    return ptr;
}

#[wasm_bindgen]
pub fn read_wasm_memory_buffer() -> u32 {
    unsafe {
        return WASM_MEMORY_BUFFER[0];
    }
}

// Main worker function
// this one is going to modify the array and work on it.
#[wasm_bindgen]
pub fn apply() {
    unsafe {
        for i in 0..(WASM_MEMORY_BUFFER_SIZE.into()) {
            WASM_MEMORY_BUFFER[i] = WASM_MEMORY_BUFFER[i] * WASM_MEMORY_BUFFER[i];
        }
    }
}
