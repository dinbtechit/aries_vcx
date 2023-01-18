// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.61.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'ledger_generated.dart';
export 'ledger_generated.dart';

class LedgerFFIPlatform extends FlutterRustBridgeBase<LedgerFFIWire>
    with FlutterRustBridgeSetupMixin {
  LedgerFFIPlatform(FutureOr<WasmModule> dylib) : super(LedgerFFIWire(dylib)) {
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
  String? api2wire_opt_String(String? raw) {
    return raw == null ? null : api2wire_String(raw);
  }

  @protected
  Object api2wire_u64(int raw) {
    return castNativeBigInt(raw);
  }

  @protected
  Uint8List api2wire_uint_8_list(Uint8List raw) {
    return raw;
  }
// Section: finalizer

}

// Section: WASM wire module

@JS('wasm_bindgen')
external LedgerFFIWasmModule get wasmModule;

@JS()
@anonymous
class LedgerFFIWasmModule implements WasmModule {
  external Object /* Promise */ call([String? moduleName]);
  external LedgerFFIWasmModule bind(dynamic thisArg, String moduleName);
  external dynamic /* void */ wire_get_ledger_author_agreement(
      NativePortType port_);

  external dynamic /* void */ wire_set_active_txn_author_agreement_meta(
      NativePortType port_,
      String? text,
      String? version,
      String? hash,
      String acc_mech_type,
      Object time_of_acceptance);

  external dynamic /* void */ wire_create_service(
      NativePortType port_,
      String target_did,
      List<String> recipient_keys,
      List<String> routing_keys,
      String endpoint);

  external dynamic /* void */ wire_get_service_from_ledger(
      NativePortType port_, String target_did);

  external dynamic /* void */ wire_get_verkey_from_ledger(
      NativePortType port_, String did);

  external dynamic /* void */ wire_get_ledger_txn(
      NativePortType port_, int seq_no, String? submitter_did);
}

// Section: WASM wire connector

class LedgerFFIWire extends FlutterRustBridgeWasmWireBase<LedgerFFIWasmModule> {
  LedgerFFIWire(FutureOr<WasmModule> module)
      : super(WasmModule.cast<LedgerFFIWasmModule>(module));

  void wire_get_ledger_author_agreement(NativePortType port_) =>
      wasmModule.wire_get_ledger_author_agreement(port_);

  void wire_set_active_txn_author_agreement_meta(
          NativePortType port_,
          String? text,
          String? version,
          String? hash,
          String acc_mech_type,
          Object time_of_acceptance) =>
      wasmModule.wire_set_active_txn_author_agreement_meta(
          port_, text, version, hash, acc_mech_type, time_of_acceptance);

  void wire_create_service(
          NativePortType port_,
          String target_did,
          List<String> recipient_keys,
          List<String> routing_keys,
          String endpoint) =>
      wasmModule.wire_create_service(
          port_, target_did, recipient_keys, routing_keys, endpoint);

  void wire_get_service_from_ledger(NativePortType port_, String target_did) =>
      wasmModule.wire_get_service_from_ledger(port_, target_did);

  void wire_get_verkey_from_ledger(NativePortType port_, String did) =>
      wasmModule.wire_get_verkey_from_ledger(port_, did);

  void wire_get_ledger_txn(
          NativePortType port_, int seq_no, String? submitter_did) =>
      wasmModule.wire_get_ledger_txn(port_, seq_no, submitter_did);
}
