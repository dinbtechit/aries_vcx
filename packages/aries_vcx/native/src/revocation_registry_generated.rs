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

use crate::revocation_registry::*;
use core::panic::UnwindSafe;
use flutter_rust_bridge::*;
use std::ffi::c_void;
use std::sync::Arc;

// Section: imports

// Section: wire functions

fn wire_revocation_registry_create_impl(
    port_: MessagePort,
    config: impl Wire2Api<RevocationRegistryConfig> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "revocation_registry_create",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_config = config.wire2api();
            move |task_callback| revocation_registry_create(api_config)
        },
    )
}
fn wire_revocation_registry_publish_impl(
    port_: MessagePort,
    handle: impl Wire2Api<u32> + UnwindSafe,
    tails_url: impl Wire2Api<String> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "revocation_registry_publish",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_handle = handle.wire2api();
            let api_tails_url = tails_url.wire2api();
            move |task_callback| revocation_registry_publish(api_handle, api_tails_url)
        },
    )
}
fn wire_revocation_registry_publish_revocations_impl(
    port_: MessagePort,
    handle: impl Wire2Api<u32> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "revocation_registry_publish_revocations",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_handle = handle.wire2api();
            move |task_callback| revocation_registry_publish_revocations(api_handle)
        },
    )
}
fn wire_revocation_registry_get_rev_reg_id_impl(
    port_: MessagePort,
    handle: impl Wire2Api<u32> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "revocation_registry_get_rev_reg_id",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_handle = handle.wire2api();
            move |task_callback| revocation_registry_get_rev_reg_id(api_handle)
        },
    )
}
fn wire_revocation_registry_get_tails_hash_impl(
    port_: MessagePort,
    handle: impl Wire2Api<u32> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "revocation_registry_get_tails_hash",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_handle = handle.wire2api();
            move |task_callback| revocation_registry_get_tails_hash(api_handle)
        },
    )
}
fn wire_revocation_registry_serialize_impl(
    port_: MessagePort,
    handle: impl Wire2Api<u32> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "revocation_registry_serialize",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_handle = handle.wire2api();
            move |task_callback| revocation_registry_serialize(api_handle)
        },
    )
}
fn wire_revocation_registry_deserialize_impl(
    port_: MessagePort,
    data: impl Wire2Api<String> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "revocation_registry_deserialize",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_data = data.wire2api();
            move |task_callback| revocation_registry_deserialize(api_data)
        },
    )
}
fn wire_revocation_registry_release_impl(
    port_: MessagePort,
    handle: impl Wire2Api<u32> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "revocation_registry_release",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_handle = handle.wire2api();
            move |task_callback| revocation_registry_release(api_handle)
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
    pub fn wire_revocation_registry_create(port_: MessagePort, config: JsValue) {
        wire_revocation_registry_create_impl(port_, config)
    }

    #[wasm_bindgen]
    pub fn wire_revocation_registry_publish(port_: MessagePort, handle: u32, tails_url: String) {
        wire_revocation_registry_publish_impl(port_, handle, tails_url)
    }

    #[wasm_bindgen]
    pub fn wire_revocation_registry_publish_revocations(port_: MessagePort, handle: u32) {
        wire_revocation_registry_publish_revocations_impl(port_, handle)
    }

    #[wasm_bindgen]
    pub fn wire_revocation_registry_get_rev_reg_id(port_: MessagePort, handle: u32) {
        wire_revocation_registry_get_rev_reg_id_impl(port_, handle)
    }

    #[wasm_bindgen]
    pub fn wire_revocation_registry_get_tails_hash(port_: MessagePort, handle: u32) {
        wire_revocation_registry_get_tails_hash_impl(port_, handle)
    }

    #[wasm_bindgen]
    pub fn wire_revocation_registry_serialize(port_: MessagePort, handle: u32) {
        wire_revocation_registry_serialize_impl(port_, handle)
    }

    #[wasm_bindgen]
    pub fn wire_revocation_registry_deserialize(port_: MessagePort, data: String) {
        wire_revocation_registry_deserialize_impl(port_, data)
    }

    #[wasm_bindgen]
    pub fn wire_revocation_registry_release(port_: MessagePort, handle: u32) {
        wire_revocation_registry_release_impl(port_, handle)
    }

    // Section: allocate functions

    // Section: related functions

    // Section: impl Wire2Api

    impl Wire2Api<String> for String {
        fn wire2api(self) -> String {
            self
        }
    }

    impl Wire2Api<RevocationRegistryConfig> for JsValue {
        fn wire2api(self) -> RevocationRegistryConfig {
            let self_ = self.dyn_into::<JsArray>().unwrap();
            assert_eq!(
                self_.length(),
                5,
                "Expected 5 elements, got {}",
                self_.length()
            );
            RevocationRegistryConfig {
                issuer_did: self_.get(0).wire2api(),
                cred_def_id: self_.get(1).wire2api(),
                tag: self_.get(2).wire2api(),
                tails_dir: self_.get(3).wire2api(),
                max_creds: self_.get(4).wire2api(),
            }
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
    pub extern "C" fn wire_revocation_registry_create(
        port_: i64,
        config: *mut wire_RevocationRegistryConfig,
    ) {
        wire_revocation_registry_create_impl(port_, config)
    }

    #[no_mangle]
    pub extern "C" fn wire_revocation_registry_publish(
        port_: i64,
        handle: u32,
        tails_url: *mut wire_uint_8_list,
    ) {
        wire_revocation_registry_publish_impl(port_, handle, tails_url)
    }

    #[no_mangle]
    pub extern "C" fn wire_revocation_registry_publish_revocations(port_: i64, handle: u32) {
        wire_revocation_registry_publish_revocations_impl(port_, handle)
    }

    #[no_mangle]
    pub extern "C" fn wire_revocation_registry_get_rev_reg_id(port_: i64, handle: u32) {
        wire_revocation_registry_get_rev_reg_id_impl(port_, handle)
    }

    #[no_mangle]
    pub extern "C" fn wire_revocation_registry_get_tails_hash(port_: i64, handle: u32) {
        wire_revocation_registry_get_tails_hash_impl(port_, handle)
    }

    #[no_mangle]
    pub extern "C" fn wire_revocation_registry_serialize(port_: i64, handle: u32) {
        wire_revocation_registry_serialize_impl(port_, handle)
    }

    #[no_mangle]
    pub extern "C" fn wire_revocation_registry_deserialize(
        port_: i64,
        data: *mut wire_uint_8_list,
    ) {
        wire_revocation_registry_deserialize_impl(port_, data)
    }

    #[no_mangle]
    pub extern "C" fn wire_revocation_registry_release(port_: i64, handle: u32) {
        wire_revocation_registry_release_impl(port_, handle)
    }

    // Section: allocate functions

    #[no_mangle]
    pub extern "C" fn new_box_autoadd_revocation_registry_config_13(
    ) -> *mut wire_RevocationRegistryConfig {
        support::new_leak_box_ptr(wire_RevocationRegistryConfig::new_with_null_ptr())
    }

    #[no_mangle]
    pub extern "C" fn new_uint_8_list_13(len: i32) -> *mut wire_uint_8_list {
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
    impl Wire2Api<RevocationRegistryConfig> for *mut wire_RevocationRegistryConfig {
        fn wire2api(self) -> RevocationRegistryConfig {
            let wrap = unsafe { support::box_from_leak_ptr(self) };
            Wire2Api::<RevocationRegistryConfig>::wire2api(*wrap).into()
        }
    }
    impl Wire2Api<RevocationRegistryConfig> for wire_RevocationRegistryConfig {
        fn wire2api(self) -> RevocationRegistryConfig {
            RevocationRegistryConfig {
                issuer_did: self.issuer_did.wire2api(),
                cred_def_id: self.cred_def_id.wire2api(),
                tag: self.tag.wire2api(),
                tails_dir: self.tails_dir.wire2api(),
                max_creds: self.max_creds.wire2api(),
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
    pub struct wire_RevocationRegistryConfig {
        issuer_did: *mut wire_uint_8_list,
        cred_def_id: *mut wire_uint_8_list,
        tag: u32,
        tails_dir: *mut wire_uint_8_list,
        max_creds: u32,
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

    impl NewWithNullPtr for wire_RevocationRegistryConfig {
        fn new_with_null_ptr() -> Self {
            Self {
                issuer_did: core::ptr::null_mut(),
                cred_def_id: core::ptr::null_mut(),
                tag: Default::default(),
                tails_dir: core::ptr::null_mut(),
                max_creds: Default::default(),
            }
        }
    }

    impl Default for wire_RevocationRegistryConfig {
        fn default() -> Self {
            Self::new_with_null_ptr()
        }
    }
}
#[cfg(not(target_family = "wasm"))]
pub use io::*;
