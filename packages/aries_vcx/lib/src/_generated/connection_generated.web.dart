// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.61.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'connection_generated.dart';
export 'connection_generated.dart';

class ConnectionPlatform extends FlutterRustBridgeBase<ConnectionWire>
    with FlutterRustBridgeSetupMixin {
  ConnectionPlatform(FutureOr<WasmModule> dylib)
      : super(ConnectionWire(dylib)) {
    setupMixinConstructor();
  }
  Future<void> setup() => inner.init;

// Section: api2wire

  @protected
  String api2wire_String(String raw) {
    return raw;
  }

  @protected
  List<String> api2wire_StringList(List<String> raw) {
    return raw;
  }

  @protected
  List<dynamic> api2wire_box_autoadd_pairwise_info(PairwiseInfo raw) {
    return api2wire_pairwise_info(raw);
  }

  @protected
  List<dynamic>? api2wire_opt_box_autoadd_pairwise_info(PairwiseInfo? raw) {
    return raw == null ? null : api2wire_box_autoadd_pairwise_info(raw);
  }

  @protected
  List<dynamic> api2wire_pairwise_info(PairwiseInfo raw) {
    return [api2wire_String(raw.pwDid), api2wire_String(raw.pwVk)];
  }

  @protected
  Uint8List api2wire_uint_8_list(Uint8List raw) {
    return raw;
  }
// Section: finalizer
}

// Section: WASM wire module

@JS('wasm_bindgen')
external ConnectionWasmModule get wasmModule;

@JS()
@anonymous
class ConnectionWasmModule implements WasmModule {
  external Object /* Promise */ call([String? moduleName]);
  external ConnectionWasmModule bind(dynamic thisArg, String moduleName);
  external dynamic /* void */ wire_connection_create_inviter(
      NativePortType port_, List<dynamic>? pw_info);

  external dynamic /* void */ wire_connection_create_invitee(
      NativePortType port_, String invitation);

  external dynamic /* void */ wire_connection_get_thread_id(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_connection_get_pairwise_info(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_connection_get_remote_did(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_connection_get_remote_vk(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_connection_get_state(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_connection_get_invitation(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_connection_process_invite(
      NativePortType port_, int handle, String invitation);

  external dynamic /* void */ wire_connection_process_request(
      NativePortType port_,
      int handle,
      String request,
      String service_endpoint,
      List<String> routing_keys);

  external dynamic /* void */ wire_connection_process_response(
      NativePortType port_, int handle, String response);

  external dynamic /* void */ wire_connection_process_ack(
      NativePortType port_, int handle, String message);

  external dynamic /* void */ wire_connection_process_problem_report(
      NativePortType port_, int handle, String problem_report);

  external dynamic /* void */ wire_connection_send_response(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_connection_send_request(NativePortType port_,
      int handle, String service_endpoint, List<String> routing_keys);

  external dynamic /* void */ wire_connection_send_ack(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_connection_send_generic_message(
      NativePortType port_, int handle, String content);

  external dynamic /* void */ wire_connection_send_aries_message(
      NativePortType port_, int handle, String content);

  external dynamic /* void */ wire_connection_create_invite(
      NativePortType port_,
      int handle,
      String service_endpoint,
      List<String> routing_keys);

  external dynamic /* void */ wire_connection_serialize(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_connection_deserialize(
      NativePortType port_, String connection_data);

  external dynamic /* void */ wire_connection_release(
      NativePortType port_, int handle);
}

// Section: WASM wire connector

class ConnectionWire
    extends FlutterRustBridgeWasmWireBase<ConnectionWasmModule> {
  ConnectionWire(FutureOr<WasmModule> module)
      : super(WasmModule.cast<ConnectionWasmModule>(module));

  void wire_connection_create_inviter(
          NativePortType port_, List<dynamic>? pw_info) =>
      wasmModule.wire_connection_create_inviter(port_, pw_info);

  void wire_connection_create_invitee(
          NativePortType port_, String invitation) =>
      wasmModule.wire_connection_create_invitee(port_, invitation);

  void wire_connection_get_thread_id(NativePortType port_, int handle) =>
      wasmModule.wire_connection_get_thread_id(port_, handle);

  void wire_connection_get_pairwise_info(NativePortType port_, int handle) =>
      wasmModule.wire_connection_get_pairwise_info(port_, handle);

  void wire_connection_get_remote_did(NativePortType port_, int handle) =>
      wasmModule.wire_connection_get_remote_did(port_, handle);

  void wire_connection_get_remote_vk(NativePortType port_, int handle) =>
      wasmModule.wire_connection_get_remote_vk(port_, handle);

  void wire_connection_get_state(NativePortType port_, int handle) =>
      wasmModule.wire_connection_get_state(port_, handle);

  void wire_connection_get_invitation(NativePortType port_, int handle) =>
      wasmModule.wire_connection_get_invitation(port_, handle);

  void wire_connection_process_invite(
          NativePortType port_, int handle, String invitation) =>
      wasmModule.wire_connection_process_invite(port_, handle, invitation);

  void wire_connection_process_request(NativePortType port_, int handle,
          String request, String service_endpoint, List<String> routing_keys) =>
      wasmModule.wire_connection_process_request(
          port_, handle, request, service_endpoint, routing_keys);

  void wire_connection_process_response(
          NativePortType port_, int handle, String response) =>
      wasmModule.wire_connection_process_response(port_, handle, response);

  void wire_connection_process_ack(
          NativePortType port_, int handle, String message) =>
      wasmModule.wire_connection_process_ack(port_, handle, message);

  void wire_connection_process_problem_report(
          NativePortType port_, int handle, String problem_report) =>
      wasmModule.wire_connection_process_problem_report(
          port_, handle, problem_report);

  void wire_connection_send_response(NativePortType port_, int handle) =>
      wasmModule.wire_connection_send_response(port_, handle);

  void wire_connection_send_request(NativePortType port_, int handle,
          String service_endpoint, List<String> routing_keys) =>
      wasmModule.wire_connection_send_request(
          port_, handle, service_endpoint, routing_keys);

  void wire_connection_send_ack(NativePortType port_, int handle) =>
      wasmModule.wire_connection_send_ack(port_, handle);

  void wire_connection_send_generic_message(
          NativePortType port_, int handle, String content) =>
      wasmModule.wire_connection_send_generic_message(port_, handle, content);

  void wire_connection_send_aries_message(
          NativePortType port_, int handle, String content) =>
      wasmModule.wire_connection_send_aries_message(port_, handle, content);

  void wire_connection_create_invite(NativePortType port_, int handle,
          String service_endpoint, List<String> routing_keys) =>
      wasmModule.wire_connection_create_invite(
          port_, handle, service_endpoint, routing_keys);

  void wire_connection_serialize(NativePortType port_, int handle) =>
      wasmModule.wire_connection_serialize(port_, handle);

  void wire_connection_deserialize(
          NativePortType port_, String connection_data) =>
      wasmModule.wire_connection_deserialize(port_, connection_data);

  void wire_connection_release(NativePortType port_, int handle) =>
      wasmModule.wire_connection_release(port_, handle);
}
