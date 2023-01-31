use wasm_bindgen::prelude::*;

#[wasm_bindgen]
// This actually references the external javascript alert function.
extern {
    pub fn alert(s: &str);
}

#[wasm_bindgen]
// We want this function to be accessible from outside.
pub fn greet(name: &str) {
    alert(&format!("Hello, {}!", name));
}
