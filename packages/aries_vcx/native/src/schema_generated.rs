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

use crate::schema::*;
use core::panic::UnwindSafe;
use flutter_rust_bridge::*;
use std::ffi::c_void;
use std::sync::Arc;

// Section: imports

// Section: wire functions

fn wire_schema_get_attributes_impl(
    port_: MessagePort,
    _source_id: impl Wire2Api<String> + UnwindSafe,
    _schema_id: impl Wire2Api<String> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "schema_get_attributes",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api__source_id = _source_id.wire2api();
            let api__schema_id = _schema_id.wire2api();
            move |task_callback| schema_get_attributes(api__source_id, api__schema_id)
        },
    )
}
fn wire_schema_prepare_for_endorser_impl(port_: MessagePort) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "schema_prepare_for_endorser",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || move |task_callback| schema_prepare_for_endorser(),
    )
}
fn wire_schema_create_impl(
    port_: MessagePort,
    source_id: impl Wire2Api<String> + UnwindSafe,
    name: impl Wire2Api<String> + UnwindSafe,
    version: impl Wire2Api<String> + UnwindSafe,
    data: impl Wire2Api<String> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "schema_create",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_source_id = source_id.wire2api();
            let api_name = name.wire2api();
            let api_version = version.wire2api();
            let api_data = data.wire2api();
            move |task_callback| schema_create(api_source_id, api_name, api_version, api_data)
        },
    )
}
fn wire_schema_get_schema_id_impl(
    port_: MessagePort,
    handle_schema: impl Wire2Api<u32> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "schema_get_schema_id",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_handle_schema = handle_schema.wire2api();
            move |task_callback| schema_get_schema_id(api_handle_schema)
        },
    )
}
fn wire_schema_deserialize_impl(
    port_: MessagePort,
    serialized: impl Wire2Api<String> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "schema_deserialize",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_serialized = serialized.wire2api();
            move |task_callback| schema_deserialize(api_serialized)
        },
    )
}
fn wire_schema_serialize_impl(port_: MessagePort, handle_schema: impl Wire2Api<u32> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "schema_serialize",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_handle_schema = handle_schema.wire2api();
            move |task_callback| schema_serialize(api_handle_schema)
        },
    )
}
fn wire_schema_release_impl(port_: MessagePort, handle_schema: impl Wire2Api<u32> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "schema_release",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_handle_schema = handle_schema.wire2api();
            move |task_callback| schema_release(api_handle_schema)
        },
    )
}
fn wire_schema_update_state_impl(
    port_: MessagePort,
    handle_schema: impl Wire2Api<u32> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "schema_update_state",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_handle_schema = handle_schema.wire2api();
            move |task_callback| schema_update_state(api_handle_schema)
        },
    )
}
fn wire_schema_get_state_impl(port_: MessagePort, handle_schema: impl Wire2Api<u32> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "schema_get_state",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_handle_schema = handle_schema.wire2api();
            move |task_callback| schema_get_state(api_handle_schema)
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
    pub fn wire_schema_get_attributes(port_: MessagePort, _source_id: String, _schema_id: String) {
        wire_schema_get_attributes_impl(port_, _source_id, _schema_id)
    }

    #[wasm_bindgen]
    pub fn wire_schema_prepare_for_endorser(port_: MessagePort) {
        wire_schema_prepare_for_endorser_impl(port_)
    }

    #[wasm_bindgen]
    pub fn wire_schema_create(
        port_: MessagePort,
        source_id: String,
        name: String,
        version: String,
        data: String,
    ) {
        wire_schema_create_impl(port_, source_id, name, version, data)
    }

    #[wasm_bindgen]
    pub fn wire_schema_get_schema_id(port_: MessagePort, handle_schema: u32) {
        wire_schema_get_schema_id_impl(port_, handle_schema)
    }

    #[wasm_bindgen]
    pub fn wire_schema_deserialize(port_: MessagePort, serialized: String) {
        wire_schema_deserialize_impl(port_, serialized)
    }

    #[wasm_bindgen]
    pub fn wire_schema_serialize(port_: MessagePort, handle_schema: u32) {
        wire_schema_serialize_impl(port_, handle_schema)
    }

    #[wasm_bindgen]
    pub fn wire_schema_release(port_: MessagePort, handle_schema: u32) {
        wire_schema_release_impl(port_, handle_schema)
    }

    #[wasm_bindgen]
    pub fn wire_schema_update_state(port_: MessagePort, handle_schema: u32) {
        wire_schema_update_state_impl(port_, handle_schema)
    }

    #[wasm_bindgen]
    pub fn wire_schema_get_state(port_: MessagePort, handle_schema: u32) {
        wire_schema_get_state_impl(port_, handle_schema)
    }

    // Section: allocate functions

    // Section: related functions

    // Section: impl Wire2Api

    impl Wire2Api<String> for String {
        fn wire2api(self) -> String {
            self
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
    pub extern "C" fn wire_schema_get_attributes(
        port_: i64,
        _source_id: *mut wire_uint_8_list,
        _schema_id: *mut wire_uint_8_list,
    ) {
        wire_schema_get_attributes_impl(port_, _source_id, _schema_id)
    }

    #[no_mangle]
    pub extern "C" fn wire_schema_prepare_for_endorser(port_: i64) {
        wire_schema_prepare_for_endorser_impl(port_)
    }

    #[no_mangle]
    pub extern "C" fn wire_schema_create(
        port_: i64,
        source_id: *mut wire_uint_8_list,
        name: *mut wire_uint_8_list,
        version: *mut wire_uint_8_list,
        data: *mut wire_uint_8_list,
    ) {
        wire_schema_create_impl(port_, source_id, name, version, data)
    }

    #[no_mangle]
    pub extern "C" fn wire_schema_get_schema_id(port_: i64, handle_schema: u32) {
        wire_schema_get_schema_id_impl(port_, handle_schema)
    }

    #[no_mangle]
    pub extern "C" fn wire_schema_deserialize(port_: i64, serialized: *mut wire_uint_8_list) {
        wire_schema_deserialize_impl(port_, serialized)
    }

    #[no_mangle]
    pub extern "C" fn wire_schema_serialize(port_: i64, handle_schema: u32) {
        wire_schema_serialize_impl(port_, handle_schema)
    }

    #[no_mangle]
    pub extern "C" fn wire_schema_release(port_: i64, handle_schema: u32) {
        wire_schema_release_impl(port_, handle_schema)
    }

    #[no_mangle]
    pub extern "C" fn wire_schema_update_state(port_: i64, handle_schema: u32) {
        wire_schema_update_state_impl(port_, handle_schema)
    }

    #[no_mangle]
    pub extern "C" fn wire_schema_get_state(port_: i64, handle_schema: u32) {
        wire_schema_get_state_impl(port_, handle_schema)
    }

    // Section: allocate functions

    #[no_mangle]
    pub extern "C" fn new_uint_8_list_14(len: i32) -> *mut wire_uint_8_list {
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
