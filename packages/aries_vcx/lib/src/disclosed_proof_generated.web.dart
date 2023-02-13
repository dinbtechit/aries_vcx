// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.61.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'disclosed_proof_generated.dart';
export 'disclosed_proof_generated.dart';

class DisclosedProofFFIPlatform
    extends FlutterRustBridgeBase<DisclosedProofFFIWire>
    with FlutterRustBridgeSetupMixin {
  DisclosedProofFFIPlatform(FutureOr<WasmModule> dylib)
      : super(DisclosedProofFFIWire(dylib)) {
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
  Uint8List api2wire_uint_8_list(Uint8List raw) {
    return raw;
  }
// Section: finalizer
}

// Section: WASM wire module

@JS('wasm_bindgen')
external DisclosedProofFFIWasmModule get wasmModule;

@JS()
@anonymous
class DisclosedProofFFIWasmModule implements WasmModule {
  external Object /* Promise */ call([String? moduleName]);
  external DisclosedProofFFIWasmModule bind(dynamic thisArg, String moduleName);
  external dynamic /* void */ wire_disclosed_proof_create_with_request(
      NativePortType port_, String source_id, String proof_req);

  external dynamic /* void */ wire_disclosed_proof_release(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_disclosed_proof_send_proof(
      NativePortType port_, int handle, int handle_connection);

  external dynamic /* void */ wire_disclosed_proof_reject_proof(
      NativePortType port_, int handle, int handle_connection);

  external dynamic /* void */ wire_disclosed_proof_get_proof_msg(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_disclosed_proof_serialize(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_disclosed_proof_deserialize(
      NativePortType port_, String data);

  external dynamic /* void */ wire_v2_disclosed_proof_update_state(
      NativePortType port_, int handle, int connection_handle);

  external dynamic /* void */ wire_v2_disclosed_proof_update_state_with_message(
      NativePortType port_, int handle, String message, int connection_handle);

  external dynamic /* void */ wire_disclosed_proof_get_state(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_disclosed_proof_get_requests(
      NativePortType port_, int handle_connection);

  external dynamic /* void */ wire_disclosed_proof_retrieve_credentials(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_disclosed_proof_get_proof_request_attachment(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_disclosed_proof_generate_proof(
      NativePortType port_,
      int handle,
      String credentials,
      String self_attested_attrs);

  external dynamic /* void */ wire_disclosed_proof_decline_presentation_request(
      NativePortType port_,
      int handle,
      int connection_handle,
      String? reason,
      String? proposal);

  external dynamic /* void */ wire_disclosed_proof_get_thread_id(
      NativePortType port_, int handle);
}

// Section: WASM wire connector

class DisclosedProofFFIWire
    extends FlutterRustBridgeWasmWireBase<DisclosedProofFFIWasmModule> {
  DisclosedProofFFIWire(FutureOr<WasmModule> module)
      : super(WasmModule.cast<DisclosedProofFFIWasmModule>(module));

  void wire_disclosed_proof_create_with_request(
          NativePortType port_, String source_id, String proof_req) =>
      wasmModule.wire_disclosed_proof_create_with_request(
          port_, source_id, proof_req);

  void wire_disclosed_proof_release(NativePortType port_, int handle) =>
      wasmModule.wire_disclosed_proof_release(port_, handle);

  void wire_disclosed_proof_send_proof(
          NativePortType port_, int handle, int handle_connection) =>
      wasmModule.wire_disclosed_proof_send_proof(
          port_, handle, handle_connection);

  void wire_disclosed_proof_reject_proof(
          NativePortType port_, int handle, int handle_connection) =>
      wasmModule.wire_disclosed_proof_reject_proof(
          port_, handle, handle_connection);

  void wire_disclosed_proof_get_proof_msg(NativePortType port_, int handle) =>
      wasmModule.wire_disclosed_proof_get_proof_msg(port_, handle);

  void wire_disclosed_proof_serialize(NativePortType port_, int handle) =>
      wasmModule.wire_disclosed_proof_serialize(port_, handle);

  void wire_disclosed_proof_deserialize(NativePortType port_, String data) =>
      wasmModule.wire_disclosed_proof_deserialize(port_, data);

  void wire_v2_disclosed_proof_update_state(
          NativePortType port_, int handle, int connection_handle) =>
      wasmModule.wire_v2_disclosed_proof_update_state(
          port_, handle, connection_handle);

  void wire_v2_disclosed_proof_update_state_with_message(NativePortType port_,
          int handle, String message, int connection_handle) =>
      wasmModule.wire_v2_disclosed_proof_update_state_with_message(
          port_, handle, message, connection_handle);

  void wire_disclosed_proof_get_state(NativePortType port_, int handle) =>
      wasmModule.wire_disclosed_proof_get_state(port_, handle);

  void wire_disclosed_proof_get_requests(
          NativePortType port_, int handle_connection) =>
      wasmModule.wire_disclosed_proof_get_requests(port_, handle_connection);

  void wire_disclosed_proof_retrieve_credentials(
          NativePortType port_, int handle) =>
      wasmModule.wire_disclosed_proof_retrieve_credentials(port_, handle);

  void wire_disclosed_proof_get_proof_request_attachment(
          NativePortType port_, int handle) =>
      wasmModule.wire_disclosed_proof_get_proof_request_attachment(
          port_, handle);

  void wire_disclosed_proof_generate_proof(NativePortType port_, int handle,
          String credentials, String self_attested_attrs) =>
      wasmModule.wire_disclosed_proof_generate_proof(
          port_, handle, credentials, self_attested_attrs);

  void wire_disclosed_proof_decline_presentation_request(
          NativePortType port_,
          int handle,
          int connection_handle,
          String? reason,
          String? proposal) =>
      wasmModule.wire_disclosed_proof_decline_presentation_request(
          port_, handle, connection_handle, reason, proposal);

  void wire_disclosed_proof_get_thread_id(NativePortType port_, int handle) =>
      wasmModule.wire_disclosed_proof_get_thread_id(port_, handle);
}
