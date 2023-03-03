// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.67.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'out_of_band_sender_generated.dart';
export 'out_of_band_sender_generated.dart';

class OutOfBandSenderPlatform extends FlutterRustBridgeBase<OutOfBandSenderWire>
    with FlutterRustBridgeSetupMixin {
  OutOfBandSenderPlatform(FutureOr<WasmModule> dylib)
      : super(OutOfBandSenderWire(dylib)) {
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
external OutOfBandSenderWasmModule get wasmModule;

@JS()
@anonymous
class OutOfBandSenderWasmModule implements WasmModule {
  external Object /* Promise */ call([String? moduleName]);
  external OutOfBandSenderWasmModule bind(dynamic thisArg, String moduleName);
  external dynamic /* void */ wire_out_of_band_sender_create(
      NativePortType port_, String config);

  external dynamic /* void */ wire_out_of_band_sender_append_message(
      NativePortType port_, int handle, String msg);

  external dynamic /* void */ wire_out_of_band_sender_append_service(
      NativePortType port_, int handle, String service);

  external dynamic /* void */ wire_out_of_band_sender_append_service_did(
      NativePortType port_, int handle, String did);

  external dynamic /* void */ wire_out_of_band_sender_to_message(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_out_of_band_sender_get_thread_id(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_out_of_band_sender_serialize(
      NativePortType port_, int handle);

  external dynamic /* void */ wire_out_of_band_sender_deserialize(
      NativePortType port_, String oob_data);

  external dynamic /* void */ wire_out_of_band_sender_release(
      NativePortType port_, int handle);
}

// Section: WASM wire connector

class OutOfBandSenderWire
    extends FlutterRustBridgeWasmWireBase<OutOfBandSenderWasmModule> {
  OutOfBandSenderWire(FutureOr<WasmModule> module)
      : super(WasmModule.cast<OutOfBandSenderWasmModule>(module));

  void wire_out_of_band_sender_create(NativePortType port_, String config) =>
      wasmModule.wire_out_of_band_sender_create(port_, config);

  void wire_out_of_band_sender_append_message(
          NativePortType port_, int handle, String msg) =>
      wasmModule.wire_out_of_band_sender_append_message(port_, handle, msg);

  void wire_out_of_band_sender_append_service(
          NativePortType port_, int handle, String service) =>
      wasmModule.wire_out_of_band_sender_append_service(port_, handle, service);

  void wire_out_of_band_sender_append_service_did(
          NativePortType port_, int handle, String did) =>
      wasmModule.wire_out_of_band_sender_append_service_did(port_, handle, did);

  void wire_out_of_band_sender_to_message(NativePortType port_, int handle) =>
      wasmModule.wire_out_of_band_sender_to_message(port_, handle);

  void wire_out_of_band_sender_get_thread_id(
          NativePortType port_, int handle) =>
      wasmModule.wire_out_of_band_sender_get_thread_id(port_, handle);

  void wire_out_of_band_sender_serialize(NativePortType port_, int handle) =>
      wasmModule.wire_out_of_band_sender_serialize(port_, handle);

  void wire_out_of_band_sender_deserialize(
          NativePortType port_, String oob_data) =>
      wasmModule.wire_out_of_band_sender_deserialize(port_, oob_data);

  void wire_out_of_band_sender_release(NativePortType port_, int handle) =>
      wasmModule.wire_out_of_band_sender_release(port_, handle);
}
