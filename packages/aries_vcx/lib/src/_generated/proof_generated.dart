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
import 'proof_generated.io.dart'
    if (dart.library.html) 'proof_generated.web.dart';

abstract class Proof {
  Future<int> proofCreate(
      {required String sourceId,
      required String requestedAttrs,
      required String requestedPredicates,
      required String revocationDetails,
      required String name,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kProofCreateConstMeta;

  Future<String> proofGetProofMsg({required int handle, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kProofGetProofMsgConstMeta;

  Future<void> proofRelease({required int handle, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kProofReleaseConstMeta;

  Future<void> proofSendRequest(
      {required int handleProof, required int handleConnection, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kProofSendRequestConstMeta;

  Future<String> proofGetRequestMsg({required int handle, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kProofGetRequestMsgConstMeta;

  Future<String> proofSerialize({required int handle, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kProofSerializeConstMeta;

  Future<int> proofDeserialize({required String data, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kProofDeserializeConstMeta;

  Future<int> v2ProofUpdateState(
      {required int handleProof, required int connectionHandle, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kV2ProofUpdateStateConstMeta;

  Future<int> v2ProofUpdateStateWithMessage(
      {required int handleProof,
      required String message,
      required int connectionHandle,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kV2ProofUpdateStateWithMessageConstMeta;

  Future<int> proofGetState({required int handle, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kProofGetStateConstMeta;

  Future<int> proofGetProofState({required int handle, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kProofGetProofStateConstMeta;

  Future<String> proofGetThreadId({required int handle, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kProofGetThreadIdConstMeta;

  Future<void> markPresentationRequestMsgSent(
      {required int handle, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kMarkPresentationRequestMsgSentConstMeta;
}

class ProofImpl implements Proof {
  final ProofPlatform _platform;
  factory ProofImpl(ExternalLibrary dylib) =>
      ProofImpl.raw(ProofPlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory ProofImpl.wasm(FutureOr<WasmModule> module) =>
      ProofImpl(module as ExternalLibrary);
  ProofImpl.raw(this._platform);
  Future<int> proofCreate(
      {required String sourceId,
      required String requestedAttrs,
      required String requestedPredicates,
      required String revocationDetails,
      required String name,
      dynamic hint}) {
    var arg0 = _platform.api2wire_String(sourceId);
    var arg1 = _platform.api2wire_String(requestedAttrs);
    var arg2 = _platform.api2wire_String(requestedPredicates);
    var arg3 = _platform.api2wire_String(revocationDetails);
    var arg4 = _platform.api2wire_String(name);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner
          .wire_proof_create(port_, arg0, arg1, arg2, arg3, arg4),
      parseSuccessData: _wire2api_u32,
      constMeta: kProofCreateConstMeta,
      argValues: [
        sourceId,
        requestedAttrs,
        requestedPredicates,
        revocationDetails,
        name
      ],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kProofCreateConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "proof_create",
        argNames: [
          "sourceId",
          "requestedAttrs",
          "requestedPredicates",
          "revocationDetails",
          "name"
        ],
      );

  Future<String> proofGetProofMsg({required int handle, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_proof_get_proof_msg(port_, arg0),
      parseSuccessData: _wire2api_String,
      constMeta: kProofGetProofMsgConstMeta,
      argValues: [handle],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kProofGetProofMsgConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "proof_get_proof_msg",
        argNames: ["handle"],
      );

  Future<void> proofRelease({required int handle, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_proof_release(port_, arg0),
      parseSuccessData: _wire2api_unit,
      constMeta: kProofReleaseConstMeta,
      argValues: [handle],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kProofReleaseConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "proof_release",
        argNames: ["handle"],
      );

  Future<void> proofSendRequest(
      {required int handleProof, required int handleConnection, dynamic hint}) {
    var arg0 = api2wire_u32(handleProof);
    var arg1 = api2wire_u32(handleConnection);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_proof_send_request(port_, arg0, arg1),
      parseSuccessData: _wire2api_unit,
      constMeta: kProofSendRequestConstMeta,
      argValues: [handleProof, handleConnection],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kProofSendRequestConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "proof_send_request",
        argNames: ["handleProof", "handleConnection"],
      );

  Future<String> proofGetRequestMsg({required int handle, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_proof_get_request_msg(port_, arg0),
      parseSuccessData: _wire2api_String,
      constMeta: kProofGetRequestMsgConstMeta,
      argValues: [handle],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kProofGetRequestMsgConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "proof_get_request_msg",
        argNames: ["handle"],
      );

  Future<String> proofSerialize({required int handle, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_proof_serialize(port_, arg0),
      parseSuccessData: _wire2api_String,
      constMeta: kProofSerializeConstMeta,
      argValues: [handle],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kProofSerializeConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "proof_serialize",
        argNames: ["handle"],
      );

  Future<int> proofDeserialize({required String data, dynamic hint}) {
    var arg0 = _platform.api2wire_String(data);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_proof_deserialize(port_, arg0),
      parseSuccessData: _wire2api_u32,
      constMeta: kProofDeserializeConstMeta,
      argValues: [data],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kProofDeserializeConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "proof_deserialize",
        argNames: ["data"],
      );

  Future<int> v2ProofUpdateState(
      {required int handleProof, required int connectionHandle, dynamic hint}) {
    var arg0 = api2wire_u32(handleProof);
    var arg1 = api2wire_u32(connectionHandle);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_v2_proof_update_state(port_, arg0, arg1),
      parseSuccessData: _wire2api_u32,
      constMeta: kV2ProofUpdateStateConstMeta,
      argValues: [handleProof, connectionHandle],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kV2ProofUpdateStateConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "v2_proof_update_state",
        argNames: ["handleProof", "connectionHandle"],
      );

  Future<int> v2ProofUpdateStateWithMessage(
      {required int handleProof,
      required String message,
      required int connectionHandle,
      dynamic hint}) {
    var arg0 = api2wire_u32(handleProof);
    var arg1 = _platform.api2wire_String(message);
    var arg2 = api2wire_u32(connectionHandle);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner
          .wire_v2_proof_update_state_with_message(port_, arg0, arg1, arg2),
      parseSuccessData: _wire2api_u32,
      constMeta: kV2ProofUpdateStateWithMessageConstMeta,
      argValues: [handleProof, message, connectionHandle],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kV2ProofUpdateStateWithMessageConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "v2_proof_update_state_with_message",
        argNames: ["handleProof", "message", "connectionHandle"],
      );

  Future<int> proofGetState({required int handle, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_proof_get_state(port_, arg0),
      parseSuccessData: _wire2api_u32,
      constMeta: kProofGetStateConstMeta,
      argValues: [handle],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kProofGetStateConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "proof_get_state",
        argNames: ["handle"],
      );

  Future<int> proofGetProofState({required int handle, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_proof_get_proof_state(port_, arg0),
      parseSuccessData: _wire2api_u32,
      constMeta: kProofGetProofStateConstMeta,
      argValues: [handle],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kProofGetProofStateConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "proof_get_proof_state",
        argNames: ["handle"],
      );

  Future<String> proofGetThreadId({required int handle, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_proof_get_thread_id(port_, arg0),
      parseSuccessData: _wire2api_String,
      constMeta: kProofGetThreadIdConstMeta,
      argValues: [handle],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kProofGetThreadIdConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "proof_get_thread_id",
        argNames: ["handle"],
      );

  Future<void> markPresentationRequestMsgSent(
      {required int handle, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_mark_presentation_request_msg_sent(port_, arg0),
      parseSuccessData: _wire2api_unit,
      constMeta: kMarkPresentationRequestMsgSentConstMeta,
      argValues: [handle],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kMarkPresentationRequestMsgSentConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "mark_presentation_request_msg_sent",
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
