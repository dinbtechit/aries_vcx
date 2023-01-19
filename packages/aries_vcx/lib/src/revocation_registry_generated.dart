// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.61.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'revocation_registry_generated.io.dart'
    if (dart.library.html) 'revocation_registry_generated.web.dart';

abstract class RevocationRegistryFFI {
  Future<int> revocationRegistryCreate(
      {required RevocationRegistryConfig config, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kRevocationRegistryCreateConstMeta;

  Future<int> revocationRegistryPublish(
      {required int handle, required String tailsUrl, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kRevocationRegistryPublishConstMeta;

  Future<void> revocationRegistryPublishRevocations(
      {required int handle, dynamic hint});

  FlutterRustBridgeTaskConstMeta
      get kRevocationRegistryPublishRevocationsConstMeta;

  Future<String> revocationRegistryGetRevRegId(
      {required int handle, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kRevocationRegistryGetRevRegIdConstMeta;

  Future<String> revocationRegistryGetTailsHash(
      {required int handle, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kRevocationRegistryGetTailsHashConstMeta;

  Future<String> revocationRegistrySerialize(
      {required int handle, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kRevocationRegistrySerializeConstMeta;

  Future<int> revocationRegistryDeserialize(
      {required String data, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kRevocationRegistryDeserializeConstMeta;

  Future<void> revocationRegistryRelease({required int handle, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kRevocationRegistryReleaseConstMeta;
}

class RevocationRegistryConfig {
  final String issuerDid;
  final String credDefId;
  final int tag;
  final String tailsDir;
  final int maxCreds;

  RevocationRegistryConfig({
    required this.issuerDid,
    required this.credDefId,
    required this.tag,
    required this.tailsDir,
    required this.maxCreds,
  });
}

class RevocationRegistryFFIImpl implements RevocationRegistryFFI {
  final RevocationRegistryFFIPlatform _platform;
  factory RevocationRegistryFFIImpl(ExternalLibrary dylib) =>
      RevocationRegistryFFIImpl.raw(RevocationRegistryFFIPlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory RevocationRegistryFFIImpl.wasm(FutureOr<WasmModule> module) =>
      RevocationRegistryFFIImpl(module as ExternalLibrary);
  RevocationRegistryFFIImpl.raw(this._platform);
  Future<int> revocationRegistryCreate(
      {required RevocationRegistryConfig config, dynamic hint}) {
    var arg0 =
        _platform.api2wire_box_autoadd_revocation_registry_config(config);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_revocation_registry_create(port_, arg0),
      parseSuccessData: _wire2api_u32,
      constMeta: kRevocationRegistryCreateConstMeta,
      argValues: [config],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kRevocationRegistryCreateConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "revocation_registry_create",
        argNames: ["config"],
      );

  Future<int> revocationRegistryPublish(
      {required int handle, required String tailsUrl, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    var arg1 = _platform.api2wire_String(tailsUrl);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_revocation_registry_publish(port_, arg0, arg1),
      parseSuccessData: _wire2api_u32,
      constMeta: kRevocationRegistryPublishConstMeta,
      argValues: [handle, tailsUrl],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kRevocationRegistryPublishConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "revocation_registry_publish",
        argNames: ["handle", "tailsUrl"],
      );

  Future<void> revocationRegistryPublishRevocations(
      {required int handle, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner
          .wire_revocation_registry_publish_revocations(port_, arg0),
      parseSuccessData: _wire2api_unit,
      constMeta: kRevocationRegistryPublishRevocationsConstMeta,
      argValues: [handle],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta
      get kRevocationRegistryPublishRevocationsConstMeta =>
          const FlutterRustBridgeTaskConstMeta(
            debugName: "revocation_registry_publish_revocations",
            argNames: ["handle"],
          );

  Future<String> revocationRegistryGetRevRegId(
      {required int handle, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_revocation_registry_get_rev_reg_id(port_, arg0),
      parseSuccessData: _wire2api_String,
      constMeta: kRevocationRegistryGetRevRegIdConstMeta,
      argValues: [handle],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kRevocationRegistryGetRevRegIdConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "revocation_registry_get_rev_reg_id",
        argNames: ["handle"],
      );

  Future<String> revocationRegistryGetTailsHash(
      {required int handle, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_revocation_registry_get_tails_hash(port_, arg0),
      parseSuccessData: _wire2api_String,
      constMeta: kRevocationRegistryGetTailsHashConstMeta,
      argValues: [handle],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kRevocationRegistryGetTailsHashConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "revocation_registry_get_tails_hash",
        argNames: ["handle"],
      );

  Future<String> revocationRegistrySerialize(
      {required int handle, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_revocation_registry_serialize(port_, arg0),
      parseSuccessData: _wire2api_String,
      constMeta: kRevocationRegistrySerializeConstMeta,
      argValues: [handle],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kRevocationRegistrySerializeConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "revocation_registry_serialize",
        argNames: ["handle"],
      );

  Future<int> revocationRegistryDeserialize(
      {required String data, dynamic hint}) {
    var arg0 = _platform.api2wire_String(data);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_revocation_registry_deserialize(port_, arg0),
      parseSuccessData: _wire2api_u32,
      constMeta: kRevocationRegistryDeserializeConstMeta,
      argValues: [data],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kRevocationRegistryDeserializeConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "revocation_registry_deserialize",
        argNames: ["data"],
      );

  Future<void> revocationRegistryRelease({required int handle, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_revocation_registry_release(port_, arg0),
      parseSuccessData: _wire2api_unit,
      constMeta: kRevocationRegistryReleaseConstMeta,
      argValues: [handle],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kRevocationRegistryReleaseConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "revocation_registry_release",
        argNames: ["handle"],
      );

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  String _wire2api_String(dynamic raw) {
    return raw as String;
  }

  int _wire2api_u32(dynamic raw) {
    return raw as int;
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
int api2wire_u32(int raw) {
  return raw;
}

@protected
int api2wire_u8(int raw) {
  return raw;
}

// Section: finalizer
