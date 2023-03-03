// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.67.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'agency_client_generated.dart';
export 'agency_client_generated.dart';

class AgencyClientPlatform extends FlutterRustBridgeBase<AgencyClientWire>
    with FlutterRustBridgeSetupMixin {
  AgencyClientPlatform(FutureOr<WasmModule> dylib)
      : super(AgencyClientWire(dylib)) {
    setupMixinConstructor();
  }
  Future<void> setup() => inner.init;

// Section: api2wire

  @protected
  String api2wire_String(String raw) {
    return raw;
  }

  @protected
  List<dynamic> api2wire_agency_client_config(AgencyClientConfig raw) {
    return [
      api2wire_String(raw.agencyDid),
      api2wire_String(raw.agencyEndpoint),
      api2wire_String(raw.agencyVerkey),
      api2wire_String(raw.remoteToSdkDid),
      api2wire_String(raw.remoteToSdkVerkey),
      api2wire_String(raw.sdkToRemoteDid),
      api2wire_String(raw.sdkToRemoteVerkey)
    ];
  }

  @protected
  List<dynamic> api2wire_agent_provision_config(AgentProvisionConfig raw) {
    return [
      api2wire_String(raw.agencyDid),
      api2wire_String(raw.agencyVerkey),
      api2wire_String(raw.agencyEndpoint),
      api2wire_opt_String(raw.agentSeed)
    ];
  }

  @protected
  List<dynamic> api2wire_box_autoadd_agency_client_config(
      AgencyClientConfig raw) {
    return api2wire_agency_client_config(raw);
  }

  @protected
  List<dynamic> api2wire_box_autoadd_agent_provision_config(
      AgentProvisionConfig raw) {
    return api2wire_agent_provision_config(raw);
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
external AgencyClientWasmModule get wasmModule;

@JS()
@anonymous
class AgencyClientWasmModule implements WasmModule {
  external Object /* Promise */ call([String? moduleName]);
  external AgencyClientWasmModule bind(dynamic thisArg, String moduleName);
  external dynamic /* void */ wire_update_webhook_url(
      NativePortType port_, String webhook_url);

  external dynamic /* void */ wire_create_agency_client_for_main_wallet(
      NativePortType port_, List<dynamic> config);

  external dynamic /* void */ wire_provision_cloud_agent(
      NativePortType port_, List<dynamic> config);
}

// Section: WASM wire connector

class AgencyClientWire
    extends FlutterRustBridgeWasmWireBase<AgencyClientWasmModule> {
  AgencyClientWire(FutureOr<WasmModule> module)
      : super(WasmModule.cast<AgencyClientWasmModule>(module));

  void wire_update_webhook_url(NativePortType port_, String webhook_url) =>
      wasmModule.wire_update_webhook_url(port_, webhook_url);

  void wire_create_agency_client_for_main_wallet(
          NativePortType port_, List<dynamic> config) =>
      wasmModule.wire_create_agency_client_for_main_wallet(port_, config);

  void wire_provision_cloud_agent(NativePortType port_, List<dynamic> config) =>
      wasmModule.wire_provision_cloud_agent(port_, config);
}
