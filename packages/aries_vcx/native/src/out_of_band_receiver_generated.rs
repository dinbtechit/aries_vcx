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
// Generated by `flutter_rust_bridge`@ 1.67.0.

use crate::out_of_band_receiver::*;
use core::panic::UnwindSafe;
use flutter_rust_bridge::*;
use std::ffi::c_void;
use std::sync::Arc;

// Section: imports

// Section: wire functions

fn wire_out_of_band_receiver_create_impl(
    port_: MessagePort,
    msg: impl Wire2Api<String> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "out_of_band_receiver_create",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_msg = msg.wire2api();
            move |task_callback| out_of_band_receiver_create(api_msg)
        },
    )
}
fn wire_out_of_band_receiver_extract_message_impl(
    port_: MessagePort,
    handle: impl Wire2Api<u32> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "out_of_band_receiver_extract_message",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_handle = handle.wire2api();
            move |task_callback| out_of_band_receiver_extract_message(api_handle)
        },
    )
}
fn wire_out_of_band_receiver_connection_exists_impl(
    port_: MessagePort,
    handle: impl Wire2Api<u32> + UnwindSafe,
    conn_handles: impl Wire2Api<Vec<u32>> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "out_of_band_receiver_connection_exists",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_handle = handle.wire2api();
            let api_conn_handles = conn_handles.wire2api();
            move |task_callback| {
                out_of_band_receiver_connection_exists(api_handle, api_conn_handles)
            }
        },
    )
}
fn wire_out_of_band_receiver_build_connection_impl(
    port_: MessagePort,
    handle: impl Wire2Api<u32> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "out_of_band_receiver_build_connection",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_handle = handle.wire2api();
            move |task_callback| out_of_band_receiver_build_connection(api_handle)
        },
    )
}
fn wire_out_of_band_receiver_get_thread_id_impl(
    port_: MessagePort,
    handle: impl Wire2Api<u32> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "out_of_band_receiver_get_thread_id",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_handle = handle.wire2api();
            move |task_callback| out_of_band_receiver_get_thread_id(api_handle)
        },
    )
}
fn wire_out_of_band_receiver_serialize_impl(
    port_: MessagePort,
    handle: impl Wire2Api<u32> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "out_of_band_receiver_serialize",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_handle = handle.wire2api();
            move |task_callback| out_of_band_receiver_serialize(api_handle)
        },
    )
}
fn wire_out_of_band_receiver_deserialize_impl(
    port_: MessagePort,
    oob_data: impl Wire2Api<String> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "out_of_band_receiver_deserialize",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_oob_data = oob_data.wire2api();
            move |task_callback| out_of_band_receiver_deserialize(api_oob_data)
        },
    )
}
fn wire_out_of_band_receiver_release_impl(
    port_: MessagePort,
    handle: impl Wire2Api<u32> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "out_of_band_receiver_release",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_handle = handle.wire2api();
            move |task_callback| out_of_band_receiver_release(api_handle)
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

impl Wire2Api<u32> for u32 {
    fn wire2api(self) -> u32 {
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
    pub fn wire_out_of_band_receiver_create(port_: MessagePort, msg: String) {
        wire_out_of_band_receiver_create_impl(port_, msg)
    }

    #[wasm_bindgen]
    pub fn wire_out_of_band_receiver_extract_message(port_: MessagePort, handle: u32) {
        wire_out_of_band_receiver_extract_message_impl(port_, handle)
    }

    #[wasm_bindgen]
    pub fn wire_out_of_band_receiver_connection_exists(
        port_: MessagePort,
        handle: u32,
        conn_handles: Box<[u32]>,
    ) {
        wire_out_of_band_receiver_connection_exists_impl(port_, handle, conn_handles)
    }

    #[wasm_bindgen]
    pub fn wire_out_of_band_receiver_build_connection(port_: MessagePort, handle: u32) {
        wire_out_of_band_receiver_build_connection_impl(port_, handle)
    }

    #[wasm_bindgen]
    pub fn wire_out_of_band_receiver_get_thread_id(port_: MessagePort, handle: u32) {
        wire_out_of_band_receiver_get_thread_id_impl(port_, handle)
    }

    #[wasm_bindgen]
    pub fn wire_out_of_band_receiver_serialize(port_: MessagePort, handle: u32) {
        wire_out_of_band_receiver_serialize_impl(port_, handle)
    }

    #[wasm_bindgen]
    pub fn wire_out_of_band_receiver_deserialize(port_: MessagePort, oob_data: String) {
        wire_out_of_band_receiver_deserialize_impl(port_, oob_data)
    }

    #[wasm_bindgen]
    pub fn wire_out_of_band_receiver_release(port_: MessagePort, handle: u32) {
        wire_out_of_band_receiver_release_impl(port_, handle)
    }

    // Section: allocate functions

    // Section: related functions

    // Section: impl Wire2Api

    impl Wire2Api<String> for String {
        fn wire2api(self) -> String {
            self
        }
    }

    impl Wire2Api<Vec<u32>> for Box<[u32]> {
        fn wire2api(self) -> Vec<u32> {
            self.into_vec()
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
    impl Wire2Api<u32> for JsValue {
        fn wire2api(self) -> u32 {
            self.unchecked_into_f64() as _
        }
    }
    impl Wire2Api<u8> for JsValue {
        fn wire2api(self) -> u8 {
            self.unchecked_into_f64() as _
        }
    }
    impl Wire2Api<Vec<u32>> for JsValue {
        fn wire2api(self) -> Vec<u32> {
            self.unchecked_into::<js_sys::Uint32Array>().to_vec().into()
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
    pub extern "C" fn wire_out_of_band_receiver_create(port_: i64, msg: *mut wire_uint_8_list) {
        wire_out_of_band_receiver_create_impl(port_, msg)
    }

    #[no_mangle]
    pub extern "C" fn wire_out_of_band_receiver_extract_message(port_: i64, handle: u32) {
        wire_out_of_band_receiver_extract_message_impl(port_, handle)
    }

    #[no_mangle]
    pub extern "C" fn wire_out_of_band_receiver_connection_exists(
        port_: i64,
        handle: u32,
        conn_handles: *mut wire_uint_32_list,
    ) {
        wire_out_of_band_receiver_connection_exists_impl(port_, handle, conn_handles)
    }

    #[no_mangle]
    pub extern "C" fn wire_out_of_band_receiver_build_connection(port_: i64, handle: u32) {
        wire_out_of_band_receiver_build_connection_impl(port_, handle)
    }

    #[no_mangle]
    pub extern "C" fn wire_out_of_band_receiver_get_thread_id(port_: i64, handle: u32) {
        wire_out_of_band_receiver_get_thread_id_impl(port_, handle)
    }

    #[no_mangle]
    pub extern "C" fn wire_out_of_band_receiver_serialize(port_: i64, handle: u32) {
        wire_out_of_band_receiver_serialize_impl(port_, handle)
    }

    #[no_mangle]
    pub extern "C" fn wire_out_of_band_receiver_deserialize(
        port_: i64,
        oob_data: *mut wire_uint_8_list,
    ) {
        wire_out_of_band_receiver_deserialize_impl(port_, oob_data)
    }

    #[no_mangle]
    pub extern "C" fn wire_out_of_band_receiver_release(port_: i64, handle: u32) {
        wire_out_of_band_receiver_release_impl(port_, handle)
    }

    // Section: allocate functions

    #[no_mangle]
    pub extern "C" fn new_uint_32_list_9(len: i32) -> *mut wire_uint_32_list {
        let ans = wire_uint_32_list {
            ptr: support::new_leak_vec_ptr(Default::default(), len),
            len,
        };
        support::new_leak_box_ptr(ans)
    }

    #[no_mangle]
    pub extern "C" fn new_uint_8_list_9(len: i32) -> *mut wire_uint_8_list {
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

    impl Wire2Api<Vec<u32>> for *mut wire_uint_32_list {
        fn wire2api(self) -> Vec<u32> {
            unsafe {
                let wrap = support::box_from_leak_ptr(self);
                support::vec_from_leak_ptr(wrap.ptr, wrap.len)
            }
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
    pub struct wire_uint_32_list {
        ptr: *mut u32,
        len: i32,
    }

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
