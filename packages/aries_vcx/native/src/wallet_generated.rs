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

use crate::wallet::*;
use core::panic::UnwindSafe;
use flutter_rust_bridge::*;
use std::ffi::c_void;
use std::sync::Arc;

// Section: imports

// Section: wire functions

fn wire_wallet_open_as_main_impl(
    port_: MessagePort,
    wallet_config: impl Wire2Api<WalletConfig> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "wallet_open_as_main",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_wallet_config = wallet_config.wire2api();
            move |task_callback| wallet_open_as_main(api_wallet_config)
        },
    )
}
fn wire_wallet_create_main_impl(
    port_: MessagePort,
    wallet_config: impl Wire2Api<WalletConfig> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "wallet_create_main",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_wallet_config = wallet_config.wire2api();
            move |task_callback| wallet_create_main(api_wallet_config)
        },
    )
}
fn wire_wallet_close_main_impl(port_: MessagePort) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "wallet_close_main",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || move |task_callback| wallet_close_main(),
    )
}
fn wire_vcx_init_issuer_config_impl(
    port_: MessagePort,
    config: impl Wire2Api<IssuerConfig> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "vcx_init_issuer_config",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_config = config.wire2api();
            move |task_callback| vcx_init_issuer_config(api_config)
        },
    )
}
fn wire_configure_issuer_wallet_impl(
    port_: MessagePort,
    enterprise_seed: impl Wire2Api<String> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "configure_issuer_wallet",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_enterprise_seed = enterprise_seed.wire2api();
            move |task_callback| {
                Ok(mirror_IssuerConfig(configure_issuer_wallet(
                    api_enterprise_seed,
                )?))
            }
        },
    )
}
fn wire_unpack_impl(port_: MessagePort, data: impl Wire2Api<Vec<u8>> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "unpack",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_data = data.wire2api();
            move |task_callback| unpack(api_data)
        },
    )
}
fn wire_create_pairwise_info_impl(port_: MessagePort) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "create_pairwise_info",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || move |task_callback| Ok(mirror_PairwiseInfo(create_pairwise_info()?)),
    )
}
fn wire_wallet_import_impl(
    port_: MessagePort,
    config: impl Wire2Api<RestoreWalletConfigs> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "wallet_import",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_config = config.wire2api();
            move |task_callback| wallet_import(api_config)
        },
    )
}
fn wire_wallet_export_impl(
    port_: MessagePort,
    path: impl Wire2Api<String> + UnwindSafe,
    backup_key: impl Wire2Api<String> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "wallet_export",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_path = path.wire2api();
            let api_backup_key = backup_key.wire2api();
            move |task_callback| wallet_export(api_path, api_backup_key)
        },
    )
}
fn wire_get_verkey_from_wallet_impl(port_: MessagePort, did: impl Wire2Api<String> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "get_verkey_from_wallet",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_did = did.wire2api();
            move |task_callback| get_verkey_from_wallet(api_did)
        },
    )
}
fn wire_rotate_verkey_impl(port_: MessagePort, did: impl Wire2Api<String> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "rotate_verkey",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_did = did.wire2api();
            move |task_callback| rotate_verkey(api_did)
        },
    )
}
fn wire_rotate_verkey_start_impl(port_: MessagePort, did: impl Wire2Api<String> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "rotate_verkey_start",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_did = did.wire2api();
            move |task_callback| rotate_verkey_start(api_did)
        },
    )
}
fn wire_rotate_verkey_apply_impl(
    port_: MessagePort,
    did: impl Wire2Api<String> + UnwindSafe,
    temp_vk: impl Wire2Api<String> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "rotate_verkey_apply",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_did = did.wire2api();
            let api_temp_vk = temp_vk.wire2api();
            move |task_callback| rotate_verkey_apply(api_did, api_temp_vk)
        },
    )
}
// Section: wrapper structs

#[derive(Clone)]
struct mirror_IssuerConfig(IssuerConfig);

#[derive(Clone)]
struct mirror_PairwiseInfo(PairwiseInfo);

// Section: static checks

const _: fn() = || {
    {
        let IssuerConfig = None::<IssuerConfig>.unwrap();
        let _: String = IssuerConfig.institution_did;
    }
    {
        let PairwiseInfo = None::<PairwiseInfo>.unwrap();
        let _: String = PairwiseInfo.pw_did;
        let _: String = PairwiseInfo.pw_vk;
    }
};
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

impl Wire2Api<u8> for u8 {
    fn wire2api(self) -> u8 {
        self
    }
}

// Section: impl IntoDart

impl support::IntoDart for mirror_IssuerConfig {
    fn into_dart(self) -> support::DartAbi {
        vec![self.0.institution_did.into_dart()].into_dart()
    }
}
impl support::IntoDartExceptPrimitive for mirror_IssuerConfig {}

impl support::IntoDart for mirror_PairwiseInfo {
    fn into_dart(self) -> support::DartAbi {
        vec![self.0.pw_did.into_dart(), self.0.pw_vk.into_dart()].into_dart()
    }
}
impl support::IntoDartExceptPrimitive for mirror_PairwiseInfo {}

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
    pub fn wire_wallet_open_as_main(port_: MessagePort, wallet_config: JsValue) {
        wire_wallet_open_as_main_impl(port_, wallet_config)
    }

    #[wasm_bindgen]
    pub fn wire_wallet_create_main(port_: MessagePort, wallet_config: JsValue) {
        wire_wallet_create_main_impl(port_, wallet_config)
    }

    #[wasm_bindgen]
    pub fn wire_wallet_close_main(port_: MessagePort) {
        wire_wallet_close_main_impl(port_)
    }

    #[wasm_bindgen]
    pub fn wire_vcx_init_issuer_config(port_: MessagePort, config: JsValue) {
        wire_vcx_init_issuer_config_impl(port_, config)
    }

    #[wasm_bindgen]
    pub fn wire_configure_issuer_wallet(port_: MessagePort, enterprise_seed: String) {
        wire_configure_issuer_wallet_impl(port_, enterprise_seed)
    }

    #[wasm_bindgen]
    pub fn wire_unpack(port_: MessagePort, data: Box<[u8]>) {
        wire_unpack_impl(port_, data)
    }

    #[wasm_bindgen]
    pub fn wire_create_pairwise_info(port_: MessagePort) {
        wire_create_pairwise_info_impl(port_)
    }

    #[wasm_bindgen]
    pub fn wire_wallet_import(port_: MessagePort, config: JsValue) {
        wire_wallet_import_impl(port_, config)
    }

    #[wasm_bindgen]
    pub fn wire_wallet_export(port_: MessagePort, path: String, backup_key: String) {
        wire_wallet_export_impl(port_, path, backup_key)
    }

    #[wasm_bindgen]
    pub fn wire_get_verkey_from_wallet(port_: MessagePort, did: String) {
        wire_get_verkey_from_wallet_impl(port_, did)
    }

    #[wasm_bindgen]
    pub fn wire_rotate_verkey(port_: MessagePort, did: String) {
        wire_rotate_verkey_impl(port_, did)
    }

    #[wasm_bindgen]
    pub fn wire_rotate_verkey_start(port_: MessagePort, did: String) {
        wire_rotate_verkey_start_impl(port_, did)
    }

    #[wasm_bindgen]
    pub fn wire_rotate_verkey_apply(port_: MessagePort, did: String, temp_vk: String) {
        wire_rotate_verkey_apply_impl(port_, did, temp_vk)
    }

    // Section: allocate functions

    // Section: related functions

    // Section: impl Wire2Api

    impl Wire2Api<String> for String {
        fn wire2api(self) -> String {
            self
        }
    }

    impl Wire2Api<IssuerConfig> for JsValue {
        fn wire2api(self) -> IssuerConfig {
            let self_ = self.dyn_into::<JsArray>().unwrap();
            assert_eq!(
                self_.length(),
                1,
                "Expected 1 elements, got {}",
                self_.length()
            );
            IssuerConfig {
                institution_did: self_.get(0).wire2api(),
            }
        }
    }
    impl Wire2Api<Option<String>> for Option<String> {
        fn wire2api(self) -> Option<String> {
            self.map(Wire2Api::wire2api)
        }
    }
    impl Wire2Api<RestoreWalletConfigs> for JsValue {
        fn wire2api(self) -> RestoreWalletConfigs {
            let self_ = self.dyn_into::<JsArray>().unwrap();
            assert_eq!(
                self_.length(),
                5,
                "Expected 5 elements, got {}",
                self_.length()
            );
            RestoreWalletConfigs {
                wallet_name: self_.get(0).wire2api(),
                wallet_key: self_.get(1).wire2api(),
                exported_wallet_path: self_.get(2).wire2api(),
                backup_key: self_.get(3).wire2api(),
                wallet_key_derivation: self_.get(4).wire2api(),
            }
        }
    }

    impl Wire2Api<Vec<u8>> for Box<[u8]> {
        fn wire2api(self) -> Vec<u8> {
            self.into_vec()
        }
    }
    impl Wire2Api<WalletConfig> for JsValue {
        fn wire2api(self) -> WalletConfig {
            let self_ = self.dyn_into::<JsArray>().unwrap();
            assert_eq!(
                self_.length(),
                8,
                "Expected 8 elements, got {}",
                self_.length()
            );
            WalletConfig {
                wallet_name: self_.get(0).wire2api(),
                wallet_key: self_.get(1).wire2api(),
                wallet_key_derivation: self_.get(2).wire2api(),
                wallet_type: self_.get(3).wire2api(),
                storage_config: self_.get(4).wire2api(),
                storage_credentials: self_.get(5).wire2api(),
                rekey: self_.get(6).wire2api(),
                rekey_derivation_method: self_.get(7).wire2api(),
            }
        }
    }
    // Section: impl Wire2Api for JsValue

    impl Wire2Api<String> for JsValue {
        fn wire2api(self) -> String {
            self.as_string().expect("non-UTF-8 string, or not a string")
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
    pub extern "C" fn wire_wallet_open_as_main(port_: i64, wallet_config: *mut wire_WalletConfig) {
        wire_wallet_open_as_main_impl(port_, wallet_config)
    }

    #[no_mangle]
    pub extern "C" fn wire_wallet_create_main(port_: i64, wallet_config: *mut wire_WalletConfig) {
        wire_wallet_create_main_impl(port_, wallet_config)
    }

    #[no_mangle]
    pub extern "C" fn wire_wallet_close_main(port_: i64) {
        wire_wallet_close_main_impl(port_)
    }

    #[no_mangle]
    pub extern "C" fn wire_vcx_init_issuer_config(port_: i64, config: *mut wire_IssuerConfig) {
        wire_vcx_init_issuer_config_impl(port_, config)
    }

    #[no_mangle]
    pub extern "C" fn wire_configure_issuer_wallet(
        port_: i64,
        enterprise_seed: *mut wire_uint_8_list,
    ) {
        wire_configure_issuer_wallet_impl(port_, enterprise_seed)
    }

    #[no_mangle]
    pub extern "C" fn wire_unpack(port_: i64, data: *mut wire_uint_8_list) {
        wire_unpack_impl(port_, data)
    }

    #[no_mangle]
    pub extern "C" fn wire_create_pairwise_info(port_: i64) {
        wire_create_pairwise_info_impl(port_)
    }

    #[no_mangle]
    pub extern "C" fn wire_wallet_import(port_: i64, config: *mut wire_RestoreWalletConfigs) {
        wire_wallet_import_impl(port_, config)
    }

    #[no_mangle]
    pub extern "C" fn wire_wallet_export(
        port_: i64,
        path: *mut wire_uint_8_list,
        backup_key: *mut wire_uint_8_list,
    ) {
        wire_wallet_export_impl(port_, path, backup_key)
    }

    #[no_mangle]
    pub extern "C" fn wire_get_verkey_from_wallet(port_: i64, did: *mut wire_uint_8_list) {
        wire_get_verkey_from_wallet_impl(port_, did)
    }

    #[no_mangle]
    pub extern "C" fn wire_rotate_verkey(port_: i64, did: *mut wire_uint_8_list) {
        wire_rotate_verkey_impl(port_, did)
    }

    #[no_mangle]
    pub extern "C" fn wire_rotate_verkey_start(port_: i64, did: *mut wire_uint_8_list) {
        wire_rotate_verkey_start_impl(port_, did)
    }

    #[no_mangle]
    pub extern "C" fn wire_rotate_verkey_apply(
        port_: i64,
        did: *mut wire_uint_8_list,
        temp_vk: *mut wire_uint_8_list,
    ) {
        wire_rotate_verkey_apply_impl(port_, did, temp_vk)
    }

    // Section: allocate functions

    #[no_mangle]
    pub extern "C" fn new_box_autoadd_issuer_config_16() -> *mut wire_IssuerConfig {
        support::new_leak_box_ptr(wire_IssuerConfig::new_with_null_ptr())
    }

    #[no_mangle]
    pub extern "C" fn new_box_autoadd_restore_wallet_configs_16() -> *mut wire_RestoreWalletConfigs
    {
        support::new_leak_box_ptr(wire_RestoreWalletConfigs::new_with_null_ptr())
    }

    #[no_mangle]
    pub extern "C" fn new_box_autoadd_wallet_config_16() -> *mut wire_WalletConfig {
        support::new_leak_box_ptr(wire_WalletConfig::new_with_null_ptr())
    }

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
    impl Wire2Api<IssuerConfig> for *mut wire_IssuerConfig {
        fn wire2api(self) -> IssuerConfig {
            let wrap = unsafe { support::box_from_leak_ptr(self) };
            Wire2Api::<IssuerConfig>::wire2api(*wrap).into()
        }
    }
    impl Wire2Api<RestoreWalletConfigs> for *mut wire_RestoreWalletConfigs {
        fn wire2api(self) -> RestoreWalletConfigs {
            let wrap = unsafe { support::box_from_leak_ptr(self) };
            Wire2Api::<RestoreWalletConfigs>::wire2api(*wrap).into()
        }
    }
    impl Wire2Api<WalletConfig> for *mut wire_WalletConfig {
        fn wire2api(self) -> WalletConfig {
            let wrap = unsafe { support::box_from_leak_ptr(self) };
            Wire2Api::<WalletConfig>::wire2api(*wrap).into()
        }
    }
    impl Wire2Api<IssuerConfig> for wire_IssuerConfig {
        fn wire2api(self) -> IssuerConfig {
            IssuerConfig {
                institution_did: self.institution_did.wire2api(),
            }
        }
    }

    impl Wire2Api<RestoreWalletConfigs> for wire_RestoreWalletConfigs {
        fn wire2api(self) -> RestoreWalletConfigs {
            RestoreWalletConfigs {
                wallet_name: self.wallet_name.wire2api(),
                wallet_key: self.wallet_key.wire2api(),
                exported_wallet_path: self.exported_wallet_path.wire2api(),
                backup_key: self.backup_key.wire2api(),
                wallet_key_derivation: self.wallet_key_derivation.wire2api(),
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
    impl Wire2Api<WalletConfig> for wire_WalletConfig {
        fn wire2api(self) -> WalletConfig {
            WalletConfig {
                wallet_name: self.wallet_name.wire2api(),
                wallet_key: self.wallet_key.wire2api(),
                wallet_key_derivation: self.wallet_key_derivation.wire2api(),
                wallet_type: self.wallet_type.wire2api(),
                storage_config: self.storage_config.wire2api(),
                storage_credentials: self.storage_credentials.wire2api(),
                rekey: self.rekey.wire2api(),
                rekey_derivation_method: self.rekey_derivation_method.wire2api(),
            }
        }
    }
    // Section: wire structs

    #[repr(C)]
    #[derive(Clone)]
    pub struct wire_IssuerConfig {
        institution_did: *mut wire_uint_8_list,
    }

    #[repr(C)]
    #[derive(Clone)]
    pub struct wire_RestoreWalletConfigs {
        wallet_name: *mut wire_uint_8_list,
        wallet_key: *mut wire_uint_8_list,
        exported_wallet_path: *mut wire_uint_8_list,
        backup_key: *mut wire_uint_8_list,
        wallet_key_derivation: *mut wire_uint_8_list,
    }

    #[repr(C)]
    #[derive(Clone)]
    pub struct wire_uint_8_list {
        ptr: *mut u8,
        len: i32,
    }

    #[repr(C)]
    #[derive(Clone)]
    pub struct wire_WalletConfig {
        wallet_name: *mut wire_uint_8_list,
        wallet_key: *mut wire_uint_8_list,
        wallet_key_derivation: *mut wire_uint_8_list,
        wallet_type: *mut wire_uint_8_list,
        storage_config: *mut wire_uint_8_list,
        storage_credentials: *mut wire_uint_8_list,
        rekey: *mut wire_uint_8_list,
        rekey_derivation_method: *mut wire_uint_8_list,
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

    impl NewWithNullPtr for wire_IssuerConfig {
        fn new_with_null_ptr() -> Self {
            Self {
                institution_did: core::ptr::null_mut(),
            }
        }
    }

    impl NewWithNullPtr for wire_RestoreWalletConfigs {
        fn new_with_null_ptr() -> Self {
            Self {
                wallet_name: core::ptr::null_mut(),
                wallet_key: core::ptr::null_mut(),
                exported_wallet_path: core::ptr::null_mut(),
                backup_key: core::ptr::null_mut(),
                wallet_key_derivation: core::ptr::null_mut(),
            }
        }
    }

    impl NewWithNullPtr for wire_WalletConfig {
        fn new_with_null_ptr() -> Self {
            Self {
                wallet_name: core::ptr::null_mut(),
                wallet_key: core::ptr::null_mut(),
                wallet_key_derivation: core::ptr::null_mut(),
                wallet_type: core::ptr::null_mut(),
                storage_config: core::ptr::null_mut(),
                storage_credentials: core::ptr::null_mut(),
                rekey: core::ptr::null_mut(),
                rekey_derivation_method: core::ptr::null_mut(),
            }
        }
    }
}
#[cfg(not(target_family = "wasm"))]
pub use io::*;