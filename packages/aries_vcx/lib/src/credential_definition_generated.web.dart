// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.61.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'credential_definition_generated.dart';
export 'credential_definition_generated.dart';

class CredentialDefinitionPlatform
    extends FlutterRustBridgeBase<CredentialDefinitionWire>
    with FlutterRustBridgeSetupMixin {
  CredentialDefinitionPlatform(FutureOr<WasmModule> dylib)
      : super(CredentialDefinitionWire(dylib)) {
    setupMixinConstructor();
  }
  Future<void> setup() => inner.init;

// Section: api2wire

  @protected
  String api2wire_String(String raw) {
    return raw;
  }

  @protected
  Uint8List api2wire_uint_8_list(Uint8List raw) {
    return raw;
  }
// Section: finalizer
}

// Section: WASM wire module

@JS('wasm_bindgen')
external CredentialDefinitionWasmModule get wasmModule;

@JS()
@anonymous
class CredentialDefinitionWasmModule implements WasmModule {
  external Object /* Promise */ call([String? moduleName]);
  external CredentialDefinitionWasmModule bind(
      dynamic thisArg, String moduleName);
  external dynamic /* void */ wire_credentialdef_create_v2_(
      NativePortType port_,
      String source_id,
      String schema_id,
      String tag,
      bool support_revocation);

  external dynamic /* void */ wire_credentialdef_publish(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_credentialdef_deserialize(
      NativePortType port_, String serialized);

  external dynamic /* void */ wire_credentialdef_release(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_credentialdef_serialize(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_credentialdef_get_cred_def_id(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_credentialdef_update_state(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_credentialdef_get_state(
      NativePortType port_, int handle);
}

// Section: WASM wire connector

class CredentialDefinitionWire
    extends FlutterRustBridgeWasmWireBase<CredentialDefinitionWasmModule> {
  CredentialDefinitionWire(FutureOr<WasmModule> module)
      : super(WasmModule.cast<CredentialDefinitionWasmModule>(module));

  void wire_credentialdef_create_v2_(NativePortType port_, String source_id,
          String schema_id, String tag, bool support_revocation) =>
      wasmModule.wire_credentialdef_create_v2_(
          port_, source_id, schema_id, tag, support_revocation);

  void wire_credentialdef_publish(NativePortType port_, int handle) =>
      wasmModule.wire_credentialdef_publish(port_, handle);

  void wire_credentialdef_deserialize(
          NativePortType port_, String serialized) =>
      wasmModule.wire_credentialdef_deserialize(port_, serialized);

  void wire_credentialdef_release(NativePortType port_, int handle) =>
      wasmModule.wire_credentialdef_release(port_, handle);

  void wire_credentialdef_serialize(NativePortType port_, int handle) =>
      wasmModule.wire_credentialdef_serialize(port_, handle);

  void wire_credentialdef_get_cred_def_id(NativePortType port_, int handle) =>
      wasmModule.wire_credentialdef_get_cred_def_id(port_, handle);

  void wire_credentialdef_update_state(NativePortType port_, int handle) =>
      wasmModule.wire_credentialdef_update_state(port_, handle);

  void wire_credentialdef_get_state(NativePortType port_, int handle) =>
      wasmModule.wire_credentialdef_get_state(port_, handle);
}
