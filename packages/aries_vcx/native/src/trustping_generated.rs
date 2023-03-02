#![allow(
    non_camel_case_types,
    unused,
    clippy::redundant_closure,
    clippy::useless_conversion,
    clippy::unit_arg,
    clippy::double_parens,
    non_snake_case,
    clippy::too_many_arguments
)]
// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.61.1.

use crate::trustping::*;
use core::panic::UnwindSafe;
use flutter_rust_bridge::*;
use std::ffi::c_void;
use std::sync::Arc;

// Section: imports

// Section: wire functions

fn wire_trustping_build_response_msg_impl(
    port_: MessagePort,
    ping: impl Wire2Api<String> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "trustping_build_response_msg",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_ping = ping.wire2api();
            move |task_callback| trustping_build_response_msg(api_ping)
        },
    )
}
fn wire_trustping_build_ping_impl(
    port_: MessagePort,
    request_response: impl Wire2Api<bool> + UnwindSafe,
    comment: impl Wire2Api<Option<String>> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "trustping_build_ping",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_request_response = request_response.wire2api();
            let api_comment = comment.wire2api();
            move |task_callback| Ok(trustping_build_ping(api_request_response, api_comment))
        },
    )
}
// Section: wrapper structs

// Section: static checks

// Section: allocate functions

// Section: related functions

// Section: impl Wire2Api

pub trait Wire2Api<T> {
    fn wire2api(self) -> T;
}

impl<T, S> Wire2Api<Option<T>> for *mut S
where
    *mut S: Wire2Api<T>,
{
    fn wire2api(self) -> Option<T> {
        (!self.is_null()).then(|| self.wire2api())
    }
}

impl Wire2Api<bool> for bool {
    fn wire2api(self) -> bool {
        self
    }
}

impl Wire2Api<u8> for u8 {
    fn wire2api(self) -> u8 {
        self
    }
}

// Section: impl IntoDart

// Section: executor

support::lazy_static! {
    pub static ref FLUTTER_RUST_BRIDGE_HANDLER: support::DefaultHandler = Default::default();
}

/// cbindgen:ignore
#[cfg(target_family = "wasm")]
mod web {
    use super::*;
    // Section: wire functions

    #[wasm_bindgen]
    pub fn wire_trustping_build_response_msg(port_: MessagePort, ping: String) {
        wire_trustping_build_response_msg_impl(port_, ping)
    }

    #[wasm_bindgen]
    pub fn wire_trustping_build_ping(
        port_: MessagePort,
        request_response: bool,
        comment: Option<String>,
    ) {
        wire_trustping_build_ping_impl(port_, request_response, comment)
    }

    // Section: allocate functions

    // Section: related functions

    // Section: impl Wire2Api

    impl Wire2Api<String> for String {
        fn wire2api(self) -> String {
            self
        }
    }

    impl Wire2Api<Option<String>> for Option<String> {
        fn wire2api(self) -> Option<String> {
            self.map(Wire2Api::wire2api)
        }
    }

    impl Wire2Api<Vec<u8>> for Box<[u8]> {
        fn wire2api(self) -> Vec<u8> {
            self.into_vec()
        }
    }
    // Section: impl Wire2Api for JsValue

    impl Wire2Api<String> for JsValue {
        fn wire2api(self) -> String {
            self.as_string().expect("non-UTF-8 string, or not a string")
        }
    }
    impl Wire2Api<bool> for JsValue {
        fn wire2api(self) -> bool {
            self.is_truthy()
        }
    }
    impl Wire2Api<Option<String>> for JsValue {
        fn wire2api(self) -> Option<String> {
            (!self.is_undefined() && !self.is_null()).then(|| self.wire2api())
        }
    }
    impl Wire2Api<u8> for JsValue {
        fn wire2api(self) -> u8 {
            self.unchecked_into_f64() as _
        }
    }
    impl Wire2Api<Vec<u8>> for JsValue {
        fn wire2api(self) -> Vec<u8> {
            self.unchecked_into::<js_sys::Uint8Array>().to_vec().into()
        }
    }
}
#[cfg(target_family = "wasm")]
pub use web::*;

#[cfg(not(target_family = "wasm"))]
mod io {
    use super::*;
    // Section: wire functions

    #[no_mangle]
    pub extern "C" fn wire_trustping_build_response_msg(port_: i64, ping: *mut wire_uint_8_list) {
        wire_trustping_build_response_msg_impl(port_, ping)
    }

    #[no_mangle]
    pub extern "C" fn wire_trustping_build_ping(
        port_: i64,
        request_response: bool,
        comment: *mut wire_uint_8_list,
    ) {
        wire_trustping_build_ping_impl(port_, request_response, comment)
    }

    // Section: allocate functions

    #[no_mangle]
    pub extern "C" fn new_uint_8_list_16(len: i32) -> *mut wire_uint_8_list {
        let ans = wire_uint_8_list {
            ptr: support::new_leak_vec_ptr(Default::default(), len),
            len,
        };
        support::new_leak_box_ptr(ans)
    }

    // Section: related functions

    // Section: impl Wire2Api

    impl Wire2Api<String> for *mut wire_uint_8_list {
        fn wire2api(self) -> String {
            let vec: Vec<u8> = self.wire2api();
            String::from_utf8_lossy(&vec).into_owned()
        }
    }

    impl Wire2Api<Vec<u8>> for *mut wire_uint_8_list {
        fn wire2api(self) -> Vec<u8> {
            unsafe {
                let wrap = support::box_from_leak_ptr(self);
                support::vec_from_leak_ptr(wrap.ptr, wrap.len)
            }
        }
    }
    // Section: wire structs

    #[repr(C)]
    #[derive(Clone)]
    pub struct wire_uint_8_list {
        ptr: *mut u8,
        len: i32,
    }

    // Section: impl NewWithNullPtr

    pub trait NewWithNullPtr {
        fn new_with_null_ptr() -> Self;
    }

    impl<T> NewWithNullPtr for *mut T {
        fn new_with_null_ptr() -> Self {
            std::ptr::null_mut()
        }
    }
}
#[cfg(not(target_family = "wasm"))]
pub use io::*;