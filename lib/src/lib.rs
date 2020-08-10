use libc::c_uint;

#[no_mangle]
pub extern fn hello_world() -> () {
    println!("Hello World");
}

#[no_mangle]
pub extern fn add_numbers(a: c_uint, b: c_uint) -> c_uint{
    a + b
}
