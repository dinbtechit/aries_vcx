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

use crate::utils::*;
use core::panic::UnwindSafe;
use flutter_rust_bridge::*;
use std::ffi::c_void;
use std::sync::Arc;

// Section: imports

// Section: wire functions

fn wire_shutdown_impl(port_: MessagePort, delete_all: impl Wire2Api<Option<bool>> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "shutdown",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_delete_all = delete_all.wire2api();
            move |task_callback| shutdown(api_delete_all)
        },
    )
}
fn wire_get_version_impl(port_: MessagePort) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "get_version",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || move |task_callback| get_version(),
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
    pub fn wire_shutdown(port_: MessagePort, delete_all: JsValue) {
        wire_shutdown_impl(port_, delete_all)
    }

    #[wasm_bindgen]
    pub fn wire_get_version(port_: MessagePort) {
        wire_get_version_impl(port_)
    }

    // Section: allocate functions

    // Section: related functions

    // Section: impl Wire2Api

    // Section: impl Wire2Api for JsValue

    impl Wire2Api<bool> for JsValue {
        fn wire2api(self) -> bool {
            self.is_truthy()
        }
    }
    impl Wire2Api<Option<bool>> for JsValue {
        fn wire2api(self) -> Option<bool> {
            (!self.is_undefined() && !self.is_null()).then(|| self.wire2api())
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
    pub extern "C" fn wire_shutdown(port_: i64, delete_all: *mut bool) {
        wire_shutdown_impl(port_, delete_all)
    }

    #[no_mangle]
    pub extern "C" fn wire_get_version(port_: i64) {
        wire_get_version_impl(port_)
    }

    // Section: allocate functions

    #[no_mangle]
    pub extern "C" fn new_box_autoadd_bool_17(value: bool) -> *mut bool {
        support::new_leak_box_ptr(value)
    }

    // Section: related functions

    // Section: impl Wire2Api

    impl Wire2Api<bool> for *mut bool {
        fn wire2api(self) -> bool {
            unsafe { *support::box_from_leak_ptr(self) }
        }
    }

    // Section: wire structs

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
