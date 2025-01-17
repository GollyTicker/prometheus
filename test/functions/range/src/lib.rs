use std::convert::TryInto;

use wasm_bindgen::prelude::*;

// USING USER TYPE: f64
static mut TYPED_ARRAY_LENGTH: usize = 5; // actually used number of elements. may change during invocation
const USER_TYPE_SIZE: usize = 8; // number of bytes used by the user-type. e.g. 8 for int64/f64

// holds the dimensions of th 2d-array, if needed
static mut DIM_0: usize = 2;
static mut DIM_1: usize = 2;

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

#[wasm_bindgen]
pub fn set_dimensions(n: i32, m: i32) {
    unsafe {
        DIM_0 = n.try_into().unwrap();
        DIM_1 = m.try_into().unwrap();
        resize((DIM_0 * DIM_1).try_into().unwrap())
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

// x => exponential_average_over_time(x, z) with type range-vector => instant-vector
// i.e. sum_{t=0 to t=N} pow(z, -(N-t)) * m[t] where m[t] is metric at time t for t = 0 (old) to t = N(new).
#[wasm_bindgen]
pub fn input_type() -> i32 {
    // 0 = invalid
    // 1 = instant-vector = vector
    // 2 = range-vector = matrix
    2
}

const SCALAR_ARGS_COUNT: usize = 0;
#[wasm_bindgen]
pub fn scalar_args_count() -> i32 {
    // number of expected scalar arguments during invocation
    SCALAR_ARGS_COUNT.try_into().unwrap()
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
        let z: f64 = f64::exp(1.0);
        let alpha: f64 = 1.0 / z;

        // Interpret 2d-array flattended. Then we need to apply our work.
        // metric index
        for m in 0..DIM_0 {
            let mut exp_avg: f64 = 0.0;

            // same metric, time index
            for t in 0..DIM_1 {
                // linear index
                let i = m * DIM_0 + t;

                let ia: usize = i * USER_TYPE_SIZE;
                let iz: usize = i * USER_TYPE_SIZE + USER_TYPE_SIZE;
                let bytes: [u8; USER_TYPE_SIZE] = WASM_MEMORY_BUFFER[ia..iz].try_into().unwrap();
                let x = f64::from_le_bytes(bytes); // WASM Standard specifies litte-endian

                // exponential average
                if t == 0 {
                    exp_avg = x;
                } else {
                    exp_avg = alpha * x + (1.0 - alpha) * exp_avg;
                }

                // after aggregation, we store the result at t=T-1.
                if t == DIM_1 - 1 {
                    let res_bytes: [u8; USER_TYPE_SIZE] = exp_avg.to_le_bytes();
                    WASM_MEMORY_BUFFER[ia..iz].copy_from_slice(&res_bytes);
                }
            }
        }
    }
}
