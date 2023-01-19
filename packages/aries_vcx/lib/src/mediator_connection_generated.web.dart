// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.61.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'mediator_connection_generated.dart';
export 'mediator_connection_generated.dart';

class MediatorConnectionFFIPlatform
    extends FlutterRustBridgeBase<MediatorConnectionFFIWire>
    with FlutterRustBridgeSetupMixin {
  MediatorConnectionFFIPlatform(FutureOr<WasmModule> dylib)
      : super(MediatorConnectionFFIWire(dylib)) {
    setupMixinConstructor();
  }
  Future<void> setup() => inner.init;

// Section: api2wire

  @protected
  String api2wire_String(String raw) {
    return raw;
  }

  @protected
  String? api2wire_opt_String(String? raw) {
    return raw == null ? null : api2wire_String(raw);
  }

  @protected
  Uint32List api2wire_uint_32_list(Uint32List raw) {
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
external MediatorConnectionFFIWasmModule get wasmModule;

@JS()
@anonymous
class MediatorConnectionFFIWasmModule implements WasmModule {
  external Object /* Promise */ call([String? moduleName]);
  external MediatorConnectionFFIWasmModule bind(
      dynamic thisArg, String moduleName);
  external dynamic /* void */ wire_mediated_connection_generate_public_invite(
      NativePortType port_, String public_did, String label);

  external dynamic /* void */ wire_mediated_connection_get_pw_did(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_mediated_connection_get_their_pw_did(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_mediated_connection_get_thread_id(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_mediated_connection_get_state(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_mediated_connection_get_source_id(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_mediated_connection_create(
      NativePortType port_, String source_id);

  external dynamic /* void */ wire_mediated_connection_create_with_invite(
      NativePortType port_, String source_id, String details);

  external dynamic /* void */ wire_mediated_connection_send_message(
      NativePortType port_, int handle, String msg);

  external dynamic /* void */ wire_mediated_connection_create_with_connection_request_v2(
      NativePortType port_, String request, String pw_info);

  external dynamic /* void */ wire_mediated_connection_send_handshake_reuse(
      NativePortType port_, int handle, String oob_msg);

  external dynamic /* void */ wire_mediated_connection_update_state_with_message(
      NativePortType port_, int handle, String message);

  external dynamic /* void */ wire_mediated_connection_handle_message(
      NativePortType port_, int handle, String message);

  external dynamic /* void */ wire_mediated_connection_update_state(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_mediated_connection_delete_connection(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_mediated_connection_connect(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_mediated_connection_serialize(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_mediated_connection_deserialize(
      NativePortType port_, String connection_data);

  external dynamic /* void */ wire_mediated_connection_release(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_mediated_connection_invite_details(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_mediated_connection_send_ping(
      NativePortType port_, int handle, String? comment);

  external dynamic /* void */ wire_mediated_connection_send_discovery_features(
      NativePortType port_, int handle, String? query, String? comment);

  external dynamic /* void */ wire_mediated_connection_info(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_mediated_connection_messages_download(
      NativePortType port_,
      Uint32List conn_handles,
      String? status_codes,
      String? uids);

  external dynamic /* void */ wire_mediated_connection_sign_data(
      NativePortType port_, int handle, Uint8List data);

  external dynamic /* void */ wire_mediated_connection_verify_signature(
      NativePortType port_, int handle, Uint8List data, Uint8List signature);
}

// Section: WASM wire connector

class MediatorConnectionFFIWire
    extends FlutterRustBridgeWasmWireBase<MediatorConnectionFFIWasmModule> {
  MediatorConnectionFFIWire(FutureOr<WasmModule> module)
      : super(WasmModule.cast<MediatorConnectionFFIWasmModule>(module));

  void wire_mediated_connection_generate_public_invite(
          NativePortType port_, String public_did, String label) =>
      wasmModule.wire_mediated_connection_generate_public_invite(
          port_, public_did, label);

  void wire_mediated_connection_get_pw_did(NativePortType port_, int handle) =>
      wasmModule.wire_mediated_connection_get_pw_did(port_, handle);

  void wire_mediated_connection_get_their_pw_did(
          NativePortType port_, int handle) =>
      wasmModule.wire_mediated_connection_get_their_pw_did(port_, handle);

  void wire_mediated_connection_get_thread_id(
          NativePortType port_, int handle) =>
      wasmModule.wire_mediated_connection_get_thread_id(port_, handle);

  void wire_mediated_connection_get_state(NativePortType port_, int handle) =>
      wasmModule.wire_mediated_connection_get_state(port_, handle);

  void wire_mediated_connection_get_source_id(
          NativePortType port_, int handle) =>
      wasmModule.wire_mediated_connection_get_source_id(port_, handle);

  void wire_mediated_connection_create(
          NativePortType port_, String source_id) =>
      wasmModule.wire_mediated_connection_create(port_, source_id);

  void wire_mediated_connection_create_with_invite(
          NativePortType port_, String source_id, String details) =>
      wasmModule.wire_mediated_connection_create_with_invite(
          port_, source_id, details);

  void wire_mediated_connection_send_message(
          NativePortType port_, int handle, String msg) =>
      wasmModule.wire_mediated_connection_send_message(port_, handle, msg);

  void wire_mediated_connection_create_with_connection_request_v2(
          NativePortType port_, String request, String pw_info) =>
      wasmModule.wire_mediated_connection_create_with_connection_request_v2(
          port_, request, pw_info);

  void wire_mediated_connection_send_handshake_reuse(
          NativePortType port_, int handle, String oob_msg) =>
      wasmModule.wire_mediated_connection_send_handshake_reuse(
          port_, handle, oob_msg);

  void wire_mediated_connection_update_state_with_message(
          NativePortType port_, int handle, String message) =>
      wasmModule.wire_mediated_connection_update_state_with_message(
          port_, handle, message);

  void wire_mediated_connection_handle_message(
          NativePortType port_, int handle, String message) =>
      wasmModule.wire_mediated_connection_handle_message(
          port_, handle, message);

  void wire_mediated_connection_update_state(
          NativePortType port_, int handle) =>
      wasmModule.wire_mediated_connection_update_state(port_, handle);

  void wire_mediated_connection_delete_connection(
          NativePortType port_, int handle) =>
      wasmModule.wire_mediated_connection_delete_connection(port_, handle);

  void wire_mediated_connection_connect(NativePortType port_, int handle) =>
      wasmModule.wire_mediated_connection_connect(port_, handle);

  void wire_mediated_connection_serialize(NativePortType port_, int handle) =>
      wasmModule.wire_mediated_connection_serialize(port_, handle);

  void wire_mediated_connection_deserialize(
          NativePortType port_, String connection_data) =>
      wasmModule.wire_mediated_connection_deserialize(port_, connection_data);

  void wire_mediated_connection_release(NativePortType port_, int handle) =>
      wasmModule.wire_mediated_connection_release(port_, handle);

  void wire_mediated_connection_invite_details(
          NativePortType port_, int handle) =>
      wasmModule.wire_mediated_connection_invite_details(port_, handle);

  void wire_mediated_connection_send_ping(
          NativePortType port_, int handle, String? comment) =>
      wasmModule.wire_mediated_connection_send_ping(port_, handle, comment);

  void wire_mediated_connection_send_discovery_features(
          NativePortType port_, int handle, String? query, String? comment) =>
      wasmModule.wire_mediated_connection_send_discovery_features(
          port_, handle, query, comment);

  void wire_mediated_connection_info(NativePortType port_, int handle) =>
      wasmModule.wire_mediated_connection_info(port_, handle);

  void wire_mediated_connection_messages_download(NativePortType port_,
          Uint32List conn_handles, String? status_codes, String? uids) =>
      wasmModule.wire_mediated_connection_messages_download(
          port_, conn_handles, status_codes, uids);

  void wire_mediated_connection_sign_data(
          NativePortType port_, int handle, Uint8List data) =>
      wasmModule.wire_mediated_connection_sign_data(port_, handle, data);

  void wire_mediated_connection_verify_signature(NativePortType port_,
          int handle, Uint8List data, Uint8List signature) =>
      wasmModule.wire_mediated_connection_verify_signature(
          port_, handle, data, signature);
}
