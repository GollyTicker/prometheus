use std::convert::TryInto;

use wasm_bindgen::prelude::*;

static mut TYPED_ARRAY_LENGTH: usize = 5; // actually used number of elements. may change during invocation
const USER_TYPE_SIZE: usize = 8; // number of bytes used by the user-type. e.g. 8 for int64/f64

// TODO. How do we decide upfront, how large this memory should be?
// We cannot know this in advance. Should we pre-allocate?
// Or should we rather have the host do the allocation and wasm just works on the data?
const MAX_LENGTH: usize = 512; // used for allocation
const MAX_BUFFER_SIZE: usize = USER_TYPE_SIZE * MAX_LENGTH; // 1x i32 = 4x u8 = 4x byte

// This memory is allocated inside WASM - and the host
// will copy contents into it, so that wasm can work with it.
// This syntax [T; N] means a fixed-size array
// of elements of type T of length N.
static mut WASM_MEMORY_BUFFER: [u8; MAX_BUFFER_SIZE] = [0; MAX_BUFFER_SIZE];

// Plumbing

#[wasm_bindgen]
pub fn length() -> i32 {
    unsafe { TYPED_ARRAY_LENGTH as i32 }
}

#[wasm_bindgen]
pub fn resize(new_length: i32) {
    unsafe {
        TYPED_ARRAY_LENGTH = new_length.try_into().unwrap();
        clear(TYPED_ARRAY_LENGTH)
    }
}

pub fn clear(until: usize) {
    unsafe {
        for i in 0..(until.into()) {
            let ia: usize = i * USER_TYPE_SIZE;
            let iz: usize = i * USER_TYPE_SIZE + USER_TYPE_SIZE;
            WASM_MEMORY_BUFFER[ia..iz].copy_from_slice(&[0; USER_TYPE_SIZE])
        }
    }
}

// The pointer in wasm-memory-space to our above buffer.
// Needed for the host to write data into it.
#[wasm_bindgen]
pub fn get_wasm_memory_buffer_ptr() -> *const i32 {
    let ptr: *const i32;
    unsafe {
        ptr = WASM_MEMORY_BUFFER.as_ptr() as *const i32;
    }
    ptr
}

// x => -x/2 with type instant-vector => instant-vector

#[wasm_bindgen]
pub fn input_type() -> i32 {
    // 0 = invalid
    // 1 = instant-vector = vector
    // 2 = range-vector = matrix
    1
}

#[wasm_bindgen]
pub fn user_level_type() -> i32 {
    // 0 = invalid
    // 1 = u8
    // 2 = u16
    // 3 = u32
    // 4 = u64
    // 5 = i8
    // 6 = i16
    // 7 = i32
    // 8 = i64
    // 9 = f32
    // 10 = f64
    10
}

// Main worker function
// this one is going to modify the array and work on it.
#[wasm_bindgen]
pub fn apply() {
    unsafe {
        for i in 0..(TYPED_ARRAY_LENGTH.into()) {
            // read byte-array slice as user-level-type
            let ia: usize = i * USER_TYPE_SIZE;
            let iz: usize = i * USER_TYPE_SIZE + USER_TYPE_SIZE;
            let bytes: [u8; USER_TYPE_SIZE] = WASM_MEMORY_BUFFER[ia..iz].try_into().unwrap();
            let x = f64::from_le_bytes(bytes); // WASM Standard specifies litte-endian

            let res = -x / 2.0; // <--- actual work!

            // // write user-evel-type as byte-array
            let res_bytes: [u8; USER_TYPE_SIZE] = res.to_le_bytes();
            WASM_MEMORY_BUFFER[ia..iz].copy_from_slice(&res_bytes);
        }
    }
}
