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
import 'credential_definition_generated.io.dart'
    if (dart.library.html) 'credential_definition_generated.web.dart';

abstract class CredentialDefinitionFFI {
  Future<int> credentialdefCreateV2(
      {required String sourceId,
      required String schemaId,
      required String tag,
      required bool supportRevocation,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kCredentialdefCreateV2ConstMeta;

  Future<void> credentialdefPublish({required int handle, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kCredentialdefPublishConstMeta;

  Future<int> credentialdefDeserialize(
      {required String serialized, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kCredentialdefDeserializeConstMeta;

  Future<void> credentialdefRelease({required int handle, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kCredentialdefReleaseConstMeta;

  Future<String> credentialdefSerialize({required int handle, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kCredentialdefSerializeConstMeta;

  Future<String> credentialdefGetCredDefId({required int handle, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kCredentialdefGetCredDefIdConstMeta;

  Future<int> credentialdefUpdateState({required int handle, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kCredentialdefUpdateStateConstMeta;

  Future<int> credentialdefGetState({required int handle, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kCredentialdefGetStateConstMeta;
}

class CredentialDefinitionFFIImpl implements CredentialDefinitionFFI {
  final CredentialDefinitionFFIPlatform _platform;
  factory CredentialDefinitionFFIImpl(ExternalLibrary dylib) =>
      CredentialDefinitionFFIImpl.raw(CredentialDefinitionFFIPlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory CredentialDefinitionFFIImpl.wasm(FutureOr<WasmModule> module) =>
      CredentialDefinitionFFIImpl(module as ExternalLibrary);
  CredentialDefinitionFFIImpl.raw(this._platform);
  Future<int> credentialdefCreateV2(
      {required String sourceId,
      required String schemaId,
      required String tag,
      required bool supportRevocation,
      dynamic hint}) {
    var arg0 = _platform.api2wire_String(sourceId);
    var arg1 = _platform.api2wire_String(schemaId);
    var arg2 = _platform.api2wire_String(tag);
    var arg3 = supportRevocation;
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner
          .wire_credentialdef_create_v2_(port_, arg0, arg1, arg2, arg3),
      parseSuccessData: _wire2api_u32,
      constMeta: kCredentialdefCreateV2ConstMeta,
      argValues: [sourceId, schemaId, tag, supportRevocation],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kCredentialdefCreateV2ConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "credentialdef_create_v2_",
        argNames: ["sourceId", "schemaId", "tag", "supportRevocation"],
      );

  Future<void> credentialdefPublish({required int handle, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_credentialdef_publish(port_, arg0),
      parseSuccessData: _wire2api_unit,
      constMeta: kCredentialdefPublishConstMeta,
      argValues: [handle],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kCredentialdefPublishConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "credentialdef_publish",
        argNames: ["handle"],
      );

  Future<int> credentialdefDeserialize(
      {required String serialized, dynamic hint}) {
    var arg0 = _platform.api2wire_String(serialized);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_credentialdef_deserialize(port_, arg0),
      parseSuccessData: _wire2api_u32,
      constMeta: kCredentialdefDeserializeConstMeta,
      argValues: [serialized],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kCredentialdefDeserializeConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "credentialdef_deserialize",
        argNames: ["serialized"],
      );

  Future<void> credentialdefRelease({required int handle, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_credentialdef_release(port_, arg0),
      parseSuccessData: _wire2api_unit,
      constMeta: kCredentialdefReleaseConstMeta,
      argValues: [handle],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kCredentialdefReleaseConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "credentialdef_release",
        argNames: ["handle"],
      );

  Future<String> credentialdefSerialize({required int handle, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_credentialdef_serialize(port_, arg0),
      parseSuccessData: _wire2api_String,
      constMeta: kCredentialdefSerializeConstMeta,
      argValues: [handle],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kCredentialdefSerializeConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "credentialdef_serialize",
        argNames: ["handle"],
      );

  Future<String> credentialdefGetCredDefId(
      {required int handle, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_credentialdef_get_cred_def_id(port_, arg0),
      parseSuccessData: _wire2api_String,
      constMeta: kCredentialdefGetCredDefIdConstMeta,
      argValues: [handle],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kCredentialdefGetCredDefIdConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "credentialdef_get_cred_def_id",
        argNames: ["handle"],
      );

  Future<int> credentialdefUpdateState({required int handle, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_credentialdef_update_state(port_, arg0),
      parseSuccessData: _wire2api_u32,
      constMeta: kCredentialdefUpdateStateConstMeta,
      argValues: [handle],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kCredentialdefUpdateStateConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "credentialdef_update_state",
        argNames: ["handle"],
      );

  Future<int> credentialdefGetState({required int handle, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_credentialdef_get_state(port_, arg0),
      parseSuccessData: _wire2api_u32,
      constMeta: kCredentialdefGetStateConstMeta,
      argValues: [handle],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kCredentialdefGetStateConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "credentialdef_get_state",
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
bool api2wire_bool(bool raw) {
  return raw;
}

@protected
int api2wire_u32(int raw) {
  return raw;
}

@protected
int api2wire_u8(int raw) {
  return raw;
}

// Section: finalizer
