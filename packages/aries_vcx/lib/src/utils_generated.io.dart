// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.61.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'utils_generated.dart';
export 'utils_generated.dart';
import 'dart:ffi' as ffi;

class UtilsFFIPlatform extends FlutterRustBridgeBase<UtilsFFIWire> {
  UtilsFFIPlatform(ffi.DynamicLibrary dylib) : super(UtilsFFIWire(dylib));

// Section: api2wire

  @protected
  ffi.Pointer<ffi.Bool> api2wire_box_autoadd_bool(bool raw) {
    return inner.new_box_autoadd_bool_15(api2wire_bool(raw));
  }

  @protected
  ffi.Pointer<ffi.Bool> api2wire_opt_box_autoadd_bool(bool? raw) {
    return raw == null ? ffi.nullptr : api2wire_box_autoadd_bool(raw);
  }
// Section: finalizer

// Section: api_fill_to_wire

}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.

/// generated by flutter_rust_bridge
class UtilsFFIWire implements FlutterRustBridgeWireBase {
  @internal
  late final dartApi = DartApiDl(init_frb_dart_api_dl);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  UtilsFFIWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  UtilsFFIWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  ffi.Pointer<wire_IssuerConfig> new_box_autoadd_issuer_config_16() {
    return _new_box_autoadd_issuer_config_16();
  }

  late final _new_box_autoadd_issuer_config_16Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_IssuerConfig> Function()>>(
          'new_box_autoadd_issuer_config_16');
  late final _new_box_autoadd_issuer_config_16 =
      _new_box_autoadd_issuer_config_16Ptr
          .asFunction<ffi.Pointer<wire_IssuerConfig> Function()>();

  ffi.Pointer<wire_RestoreWalletConfigs>
      new_box_autoadd_restore_wallet_configs_16() {
    return _new_box_autoadd_restore_wallet_configs_16();
  }

  late final _new_box_autoadd_restore_wallet_configs_16Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_RestoreWalletConfigs>
              Function()>>('new_box_autoadd_restore_wallet_configs_16');
  late final _new_box_autoadd_restore_wallet_configs_16 =
      _new_box_autoadd_restore_wallet_configs_16Ptr
          .asFunction<ffi.Pointer<wire_RestoreWalletConfigs> Function()>();

  ffi.Pointer<wire_WalletConfig> new_box_autoadd_wallet_config_16() {
    return _new_box_autoadd_wallet_config_16();
  }

  late final _new_box_autoadd_wallet_config_16Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<wire_WalletConfig> Function()>>(
          'new_box_autoadd_wallet_config_16');
  late final _new_box_autoadd_wallet_config_16 =
      _new_box_autoadd_wallet_config_16Ptr
          .asFunction<ffi.Pointer<wire_WalletConfig> Function()>();

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();

  Object get_dart_object(
    int ptr,
  ) {
    return _get_dart_object(
      ptr,
    );
  }

  late final _get_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Handle Function(ffi.UintPtr)>>(
          'get_dart_object');
  late final _get_dart_object =
      _get_dart_objectPtr.asFunction<Object Function(int)>();

  void drop_dart_object(
    int ptr,
  ) {
    return _drop_dart_object(
      ptr,
    );
  }

  late final _drop_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.UintPtr)>>(
          'drop_dart_object');
  late final _drop_dart_object =
      _drop_dart_objectPtr.asFunction<void Function(int)>();

  int new_dart_opaque(
    Object handle,
  ) {
    return _new_dart_opaque(
      handle,
    );
  }

  late final _new_dart_opaquePtr =
      _lookup<ffi.NativeFunction<ffi.UintPtr Function(ffi.Handle)>>(
          'new_dart_opaque');
  late final _new_dart_opaque =
      _new_dart_opaquePtr.asFunction<int Function(Object)>();

  int init_frb_dart_api_dl(
    ffi.Pointer<ffi.Void> obj,
  ) {
    return _init_frb_dart_api_dl(
      obj,
    );
  }

  late final _init_frb_dart_api_dlPtr =
      _lookup<ffi.NativeFunction<ffi.IntPtr Function(ffi.Pointer<ffi.Void>)>>(
          'init_frb_dart_api_dl');
  late final _init_frb_dart_api_dl = _init_frb_dart_api_dlPtr
      .asFunction<int Function(ffi.Pointer<ffi.Void>)>();

  void wire_shutdown(
    int port_,
    ffi.Pointer<ffi.Bool> delete_all,
  ) {
    return _wire_shutdown(
      port_,
      delete_all,
    );
  }

  late final _wire_shutdownPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64, ffi.Pointer<ffi.Bool>)>>('wire_shutdown');
  late final _wire_shutdown =
      _wire_shutdownPtr.asFunction<void Function(int, ffi.Pointer<ffi.Bool>)>();

  void wire_get_version(
    int port_,
  ) {
    return _wire_get_version(
      port_,
    );
  }

  late final _wire_get_versionPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'wire_get_version');
  late final _wire_get_version =
      _wire_get_versionPtr.asFunction<void Function(int)>();

  ffi.Pointer<ffi.Bool> new_box_autoadd_bool_15(
    bool value,
  ) {
    return _new_box_autoadd_bool_15(
      value,
    );
  }

  late final _new_box_autoadd_bool_15Ptr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Bool> Function(ffi.Bool)>>(
          'new_box_autoadd_bool_15');
  late final _new_box_autoadd_bool_15 = _new_box_autoadd_bool_15Ptr
      .asFunction<ffi.Pointer<ffi.Bool> Function(bool)>();

  ffi.Pointer<wire_RevocationRegistryConfig>
      new_box_autoadd_revocation_registry_config_13() {
    return _new_box_autoadd_revocation_registry_config_13();
  }

  late final _new_box_autoadd_revocation_registry_config_13Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_RevocationRegistryConfig>
              Function()>>('new_box_autoadd_revocation_registry_config_13');
  late final _new_box_autoadd_revocation_registry_config_13 =
      _new_box_autoadd_revocation_registry_config_13Ptr
          .asFunction<ffi.Pointer<wire_RevocationRegistryConfig> Function()>();

  ffi.Pointer<wire_AgencyClientConfig>
      new_box_autoadd_agency_client_config_1() {
    return _new_box_autoadd_agency_client_config_1();
  }

  late final _new_box_autoadd_agency_client_config_1Ptr = _lookup<
          ffi.NativeFunction<ffi.Pointer<wire_AgencyClientConfig> Function()>>(
      'new_box_autoadd_agency_client_config_1');
  late final _new_box_autoadd_agency_client_config_1 =
      _new_box_autoadd_agency_client_config_1Ptr
          .asFunction<ffi.Pointer<wire_AgencyClientConfig> Function()>();

  ffi.Pointer<wire_AgentProvisionConfig>
      new_box_autoadd_agent_provision_config_1() {
    return _new_box_autoadd_agent_provision_config_1();
  }

  late final _new_box_autoadd_agent_provision_config_1Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_AgentProvisionConfig>
              Function()>>('new_box_autoadd_agent_provision_config_1');
  late final _new_box_autoadd_agent_provision_config_1 =
      _new_box_autoadd_agent_provision_config_1Ptr
          .asFunction<ffi.Pointer<wire_AgentProvisionConfig> Function()>();

  void free_WireSyncReturn(
    WireSyncReturn ptr,
  ) {
    return _free_WireSyncReturn(
      ptr,
    );
  }

  late final _free_WireSyncReturnPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturn)>>(
          'free_WireSyncReturn');
  late final _free_WireSyncReturn =
      _free_WireSyncReturnPtr.asFunction<void Function(WireSyncReturn)>();
}

class _Dart_Handle extends ffi.Opaque {}

class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

class wire_IssuerConfig extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> institution_did;
}

class wire_RestoreWalletConfigs extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> wallet_name;

  external ffi.Pointer<wire_uint_8_list> wallet_key;

  external ffi.Pointer<wire_uint_8_list> exported_wallet_path;

  external ffi.Pointer<wire_uint_8_list> backup_key;

  external ffi.Pointer<wire_uint_8_list> wallet_key_derivation;
}

class wire_WalletConfig extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> wallet_name;

  external ffi.Pointer<wire_uint_8_list> wallet_key;

  external ffi.Pointer<wire_uint_8_list> wallet_key_derivation;

  external ffi.Pointer<wire_uint_8_list> wallet_type;

  external ffi.Pointer<wire_uint_8_list> storage_config;

  external ffi.Pointer<wire_uint_8_list> storage_credentials;

  external ffi.Pointer<wire_uint_8_list> rekey;

  external ffi.Pointer<wire_uint_8_list> rekey_derivation_method;
}

class wire_RevocationRegistryConfig extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> issuer_did;

  external ffi.Pointer<wire_uint_8_list> cred_def_id;

  @ffi.Uint32()
  external int tag;

  external ffi.Pointer<wire_uint_8_list> tails_dir;

  @ffi.Uint32()
  external int max_creds;
}

class wire_AgencyClientConfig extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> agency_did;

  external ffi.Pointer<wire_uint_8_list> agency_endpoint;

  external ffi.Pointer<wire_uint_8_list> agency_verkey;

  external ffi.Pointer<wire_uint_8_list> remote_to_sdk_did;

  external ffi.Pointer<wire_uint_8_list> remote_to_sdk_verkey;

  external ffi.Pointer<wire_uint_8_list> sdk_to_remote_did;

  external ffi.Pointer<wire_uint_8_list> sdk_to_remote_verkey;
}

class wire_AgentProvisionConfig extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> agency_did;

  external ffi.Pointer<wire_uint_8_list> agency_verkey;

  external ffi.Pointer<wire_uint_8_list> agency_endpoint;

  external ffi.Pointer<wire_uint_8_list> agent_seed;
}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<ffi.Bool Function(DartPort, ffi.Pointer<ffi.Void>)>>;
typedef DartPort = ffi.Int64;
