// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.67.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'agency_client_generated.io.dart'
    if (dart.library.html) 'agency_client_generated.web.dart';

abstract class AgencyClient {
  Future<void> updateWebhookUrl({required String webhookUrl, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kUpdateWebhookUrlConstMeta;

  Future<void> createAgencyClientForMainWallet(
      {required AgencyClientConfig config, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kCreateAgencyClientForMainWalletConstMeta;

  Future<AgencyClientConfig> provisionCloudAgent(
      {required AgentProvisionConfig config, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kProvisionCloudAgentConstMeta;
}

class AgencyClientConfig {
  final String agencyDid;
  final String agencyEndpoint;
  final String agencyVerkey;
  final String remoteToSdkDid;
  final String remoteToSdkVerkey;
  final String sdkToRemoteDid;
  final String sdkToRemoteVerkey;

  const AgencyClientConfig({
    required this.agencyDid,
    required this.agencyEndpoint,
    required this.agencyVerkey,
    required this.remoteToSdkDid,
    required this.remoteToSdkVerkey,
    required this.sdkToRemoteDid,
    required this.sdkToRemoteVerkey,
  });
}

class AgentProvisionConfig {
  final String agencyDid;
  final String agencyVerkey;
  final String agencyEndpoint;
  final String? agentSeed;

  const AgentProvisionConfig({
    required this.agencyDid,
    required this.agencyVerkey,
    required this.agencyEndpoint,
    this.agentSeed,
  });
}

class AgencyClientImpl implements AgencyClient {
  final AgencyClientPlatform _platform;
  factory AgencyClientImpl(ExternalLibrary dylib) =>
      AgencyClientImpl.raw(AgencyClientPlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory AgencyClientImpl.wasm(FutureOr<WasmModule> module) =>
      AgencyClientImpl(module as ExternalLibrary);
  AgencyClientImpl.raw(this._platform);
  Future<void> updateWebhookUrl({required String webhookUrl, dynamic hint}) {
    var arg0 = _platform.api2wire_String(webhookUrl);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_update_webhook_url(port_, arg0),
      parseSuccessData: _wire2api_unit,
      constMeta: kUpdateWebhookUrlConstMeta,
      argValues: [webhookUrl],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kUpdateWebhookUrlConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "update_webhook_url",
        argNames: ["webhookUrl"],
      );

  Future<void> createAgencyClientForMainWallet(
      {required AgencyClientConfig config, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_agency_client_config(config);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner
          .wire_create_agency_client_for_main_wallet(port_, arg0),
      parseSuccessData: _wire2api_unit,
      constMeta: kCreateAgencyClientForMainWalletConstMeta,
      argValues: [config],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta
      get kCreateAgencyClientForMainWalletConstMeta =>
          const FlutterRustBridgeTaskConstMeta(
            debugName: "create_agency_client_for_main_wallet",
            argNames: ["config"],
          );

  Future<AgencyClientConfig> provisionCloudAgent(
      {required AgentProvisionConfig config, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_agent_provision_config(config);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_provision_cloud_agent(port_, arg0),
      parseSuccessData: _wire2api_agency_client_config,
      constMeta: kProvisionCloudAgentConstMeta,
      argValues: [config],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kProvisionCloudAgentConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "provision_cloud_agent",
        argNames: ["config"],
      );

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  String _wire2api_String(dynamic raw) {
    return raw as String;
  }

  AgencyClientConfig _wire2api_agency_client_config(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 7)
      throw Exception('unexpected arr length: expect 7 but see ${arr.length}');
    return AgencyClientConfig(
      agencyDid: _wire2api_String(arr[0]),
      agencyEndpoint: _wire2api_String(arr[1]),
      agencyVerkey: _wire2api_String(arr[2]),
      remoteToSdkDid: _wire2api_String(arr[3]),
      remoteToSdkVerkey: _wire2api_String(arr[4]),
      sdkToRemoteDid: _wire2api_String(arr[5]),
      sdkToRemoteVerkey: _wire2api_String(arr[6]),
    );
  }

  int _wire2api_u8(dynamic raw) {
    return raw as int;
  }

  Uint8List _wire2api_uint_8_list(dynamic raw) {
    return raw as Uint8List;
  }

  void _wire2api_unit(dynamic raw) {
    return;
  }
}

// Section: api2wire

@protected
int api2wire_u8(int raw) {
  return raw;
}

// Section: finalizer
