// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.67.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'trustping_generated.dart';
export 'trustping_generated.dart';

class TrustpingPlatform extends FlutterRustBridgeBase<TrustpingWire>
    with FlutterRustBridgeSetupMixin {
  TrustpingPlatform(FutureOr<WasmModule> dylib) : super(TrustpingWire(dylib)) {
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
external TrustpingWasmModule get wasmModule;

@JS()
@anonymous
class TrustpingWasmModule implements WasmModule {
  external Object /* Promise */ call([String? moduleName]);
  external TrustpingWasmModule bind(dynamic thisArg, String moduleName);
  external dynamic /* void */ wire_trustping_build_response_msg(
      NativePortType port_, String ping);

  external dynamic /* void */ wire_trustping_build_ping(
      NativePortType port_, bool request_response, String? comment);
}

// Section: WASM wire connector

class TrustpingWire extends FlutterRustBridgeWasmWireBase<TrustpingWasmModule> {
  TrustpingWire(FutureOr<WasmModule> module)
      : super(WasmModule.cast<TrustpingWasmModule>(module));

  void wire_trustping_build_response_msg(NativePortType port_, String ping) =>
      wasmModule.wire_trustping_build_response_msg(port_, ping);

  void wire_trustping_build_ping(
          NativePortType port_, bool request_response, String? comment) =>
      wasmModule.wire_trustping_build_ping(port_, request_response, comment);
}
