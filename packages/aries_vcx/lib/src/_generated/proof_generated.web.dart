// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.61.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'proof_generated.dart';
export 'proof_generated.dart';

class ProofPlatform extends FlutterRustBridgeBase<ProofWire>
    with FlutterRustBridgeSetupMixin {
  ProofPlatform(FutureOr<WasmModule> dylib) : super(ProofWire(dylib)) {
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
external ProofWasmModule get wasmModule;

@JS()
@anonymous
class ProofWasmModule implements WasmModule {
  external Object /* Promise */ call([String? moduleName]);
  external ProofWasmModule bind(dynamic thisArg, String moduleName);
  external dynamic /* void */ wire_proof_create(
      NativePortType port_,
      String source_id,
      String requested_attrs,
      String requested_predicates,
      String revocation_details,
      String name);

  external dynamic /* void */ wire_proof_get_proof_msg(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_proof_release(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_proof_send_request(
      NativePortType port_, int handle_proof, int handle_connection);

  external dynamic /* void */ wire_proof_get_request_msg(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_proof_serialize(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_proof_deserialize(
      NativePortType port_, String data);

  external dynamic /* void */ wire_v2_proof_update_state(
      NativePortType port_, int handle_proof, int connection_handle);

  external dynamic /* void */ wire_v2_proof_update_state_with_message(
      NativePortType port_,
      int handle_proof,
      String message,
      int connection_handle);

  external dynamic /* void */ wire_proof_get_state(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_proof_get_proof_state(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_proof_get_thread_id(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_mark_presentation_request_msg_sent(
      NativePortType port_, int handle);
}

// Section: WASM wire connector

class ProofWire extends FlutterRustBridgeWasmWireBase<ProofWasmModule> {
  ProofWire(FutureOr<WasmModule> module)
      : super(WasmModule.cast<ProofWasmModule>(module));

  void wire_proof_create(
          NativePortType port_,
          String source_id,
          String requested_attrs,
          String requested_predicates,
          String revocation_details,
          String name) =>
      wasmModule.wire_proof_create(port_, source_id, requested_attrs,
          requested_predicates, revocation_details, name);

  void wire_proof_get_proof_msg(NativePortType port_, int handle) =>
      wasmModule.wire_proof_get_proof_msg(port_, handle);

  void wire_proof_release(NativePortType port_, int handle) =>
      wasmModule.wire_proof_release(port_, handle);

  void wire_proof_send_request(
          NativePortType port_, int handle_proof, int handle_connection) =>
      wasmModule.wire_proof_send_request(
          port_, handle_proof, handle_connection);

  void wire_proof_get_request_msg(NativePortType port_, int handle) =>
      wasmModule.wire_proof_get_request_msg(port_, handle);

  void wire_proof_serialize(NativePortType port_, int handle) =>
      wasmModule.wire_proof_serialize(port_, handle);

  void wire_proof_deserialize(NativePortType port_, String data) =>
      wasmModule.wire_proof_deserialize(port_, data);

  void wire_v2_proof_update_state(
          NativePortType port_, int handle_proof, int connection_handle) =>
      wasmModule.wire_v2_proof_update_state(
          port_, handle_proof, connection_handle);

  void wire_v2_proof_update_state_with_message(NativePortType port_,
          int handle_proof, String message, int connection_handle) =>
      wasmModule.wire_v2_proof_update_state_with_message(
          port_, handle_proof, message, connection_handle);

  void wire_proof_get_state(NativePortType port_, int handle) =>
      wasmModule.wire_proof_get_state(port_, handle);

  void wire_proof_get_proof_state(NativePortType port_, int handle) =>
      wasmModule.wire_proof_get_proof_state(port_, handle);

  void wire_proof_get_thread_id(NativePortType port_, int handle) =>
      wasmModule.wire_proof_get_thread_id(port_, handle);

  void wire_mark_presentation_request_msg_sent(
          NativePortType port_, int handle) =>
      wasmModule.wire_mark_presentation_request_msg_sent(port_, handle);
}