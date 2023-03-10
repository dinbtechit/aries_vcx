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
import 'connection_generated.io.dart'
    if (dart.library.html) 'connection_generated.web.dart';

abstract class Connection {
  Future<int> connectionCreateInviter({PairwiseInfo? pwInfo, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kConnectionCreateInviterConstMeta;

  Future<int> connectionCreateInvitee(
      {required String invitation, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kConnectionCreateInviteeConstMeta;

  Future<String> connectionGetThreadId({required int handle, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kConnectionGetThreadIdConstMeta;

  Future<String> connectionGetPairwiseInfo({required int handle, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kConnectionGetPairwiseInfoConstMeta;

  Future<String> connectionGetRemoteDid({required int handle, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kConnectionGetRemoteDidConstMeta;

  Future<String> connectionGetRemoteVk({required int handle, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kConnectionGetRemoteVkConstMeta;

  Future<int> connectionGetState({required int handle, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kConnectionGetStateConstMeta;

  Future<String> connectionGetInvitation({required int handle, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kConnectionGetInvitationConstMeta;

  Future<void> connectionProcessInvite(
      {required int handle, required String invitation, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kConnectionProcessInviteConstMeta;

  Future<void> connectionProcessRequest(
      {required int handle,
      required String request,
      required String serviceEndpoint,
      required List<String> routingKeys,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kConnectionProcessRequestConstMeta;

  Future<void> connectionProcessResponse(
      {required int handle, required String response, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kConnectionProcessResponseConstMeta;

  Future<void> connectionProcessAck(
      {required int handle, required String message, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kConnectionProcessAckConstMeta;

  Future<void> connectionProcessProblemReport(
      {required int handle, required String problemReport, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kConnectionProcessProblemReportConstMeta;

  Future<void> connectionSendResponse({required int handle, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kConnectionSendResponseConstMeta;

  Future<void> connectionSendRequest(
      {required int handle,
      required String serviceEndpoint,
      required List<String> routingKeys,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kConnectionSendRequestConstMeta;

  Future<void> connectionSendAck({required int handle, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kConnectionSendAckConstMeta;

  Future<void> connectionSendGenericMessage(
      {required int handle, required String content, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kConnectionSendGenericMessageConstMeta;

  Future<void> connectionSendAriesMessage(
      {required int handle, required String content, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kConnectionSendAriesMessageConstMeta;

  Future<void> connectionCreateInvite(
      {required int handle,
      required String serviceEndpoint,
      required List<String> routingKeys,
      dynamic hint});

  FlutterRustBridgeTaskConstMeta get kConnectionCreateInviteConstMeta;

  Future<String> connectionSerialize({required int handle, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kConnectionSerializeConstMeta;

  Future<int> connectionDeserialize(
      {required String connectionData, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kConnectionDeserializeConstMeta;

  Future<void> connectionRelease({required int handle, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kConnectionReleaseConstMeta;
}

class PairwiseInfo {
  final String pwDid;
  final String pwVk;

  const PairwiseInfo({
    required this.pwDid,
    required this.pwVk,
  });
}

class ConnectionImpl implements Connection {
  final ConnectionPlatform _platform;
  factory ConnectionImpl(ExternalLibrary dylib) =>
      ConnectionImpl.raw(ConnectionPlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory ConnectionImpl.wasm(FutureOr<WasmModule> module) =>
      ConnectionImpl(module as ExternalLibrary);
  ConnectionImpl.raw(this._platform);
  Future<int> connectionCreateInviter({PairwiseInfo? pwInfo, dynamic hint}) {
    var arg0 = _platform.api2wire_opt_box_autoadd_pairwise_info(pwInfo);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_connection_create_inviter(port_, arg0),
      parseSuccessData: _wire2api_u32,
      constMeta: kConnectionCreateInviterConstMeta,
      argValues: [pwInfo],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kConnectionCreateInviterConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "connection_create_inviter",
        argNames: ["pwInfo"],
      );

  Future<int> connectionCreateInvitee(
      {required String invitation, dynamic hint}) {
    var arg0 = _platform.api2wire_String(invitation);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_connection_create_invitee(port_, arg0),
      parseSuccessData: _wire2api_u32,
      constMeta: kConnectionCreateInviteeConstMeta,
      argValues: [invitation],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kConnectionCreateInviteeConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "connection_create_invitee",
        argNames: ["invitation"],
      );

  Future<String> connectionGetThreadId({required int handle, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_connection_get_thread_id(port_, arg0),
      parseSuccessData: _wire2api_String,
      constMeta: kConnectionGetThreadIdConstMeta,
      argValues: [handle],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kConnectionGetThreadIdConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "connection_get_thread_id",
        argNames: ["handle"],
      );

  Future<String> connectionGetPairwiseInfo(
      {required int handle, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_connection_get_pairwise_info(port_, arg0),
      parseSuccessData: _wire2api_String,
      constMeta: kConnectionGetPairwiseInfoConstMeta,
      argValues: [handle],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kConnectionGetPairwiseInfoConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "connection_get_pairwise_info",
        argNames: ["handle"],
      );

  Future<String> connectionGetRemoteDid({required int handle, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_connection_get_remote_did(port_, arg0),
      parseSuccessData: _wire2api_String,
      constMeta: kConnectionGetRemoteDidConstMeta,
      argValues: [handle],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kConnectionGetRemoteDidConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "connection_get_remote_did",
        argNames: ["handle"],
      );

  Future<String> connectionGetRemoteVk({required int handle, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_connection_get_remote_vk(port_, arg0),
      parseSuccessData: _wire2api_String,
      constMeta: kConnectionGetRemoteVkConstMeta,
      argValues: [handle],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kConnectionGetRemoteVkConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "connection_get_remote_vk",
        argNames: ["handle"],
      );

  Future<int> connectionGetState({required int handle, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_connection_get_state(port_, arg0),
      parseSuccessData: _wire2api_u32,
      constMeta: kConnectionGetStateConstMeta,
      argValues: [handle],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kConnectionGetStateConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "connection_get_state",
        argNames: ["handle"],
      );

  Future<String> connectionGetInvitation({required int handle, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_connection_get_invitation(port_, arg0),
      parseSuccessData: _wire2api_String,
      constMeta: kConnectionGetInvitationConstMeta,
      argValues: [handle],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kConnectionGetInvitationConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "connection_get_invitation",
        argNames: ["handle"],
      );

  Future<void> connectionProcessInvite(
      {required int handle, required String invitation, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    var arg1 = _platform.api2wire_String(invitation);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_connection_process_invite(port_, arg0, arg1),
      parseSuccessData: _wire2api_unit,
      constMeta: kConnectionProcessInviteConstMeta,
      argValues: [handle, invitation],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kConnectionProcessInviteConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "connection_process_invite",
        argNames: ["handle", "invitation"],
      );

  Future<void> connectionProcessRequest(
      {required int handle,
      required String request,
      required String serviceEndpoint,
      required List<String> routingKeys,
      dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    var arg1 = _platform.api2wire_String(request);
    var arg2 = _platform.api2wire_String(serviceEndpoint);
    var arg3 = _platform.api2wire_StringList(routingKeys);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner
          .wire_connection_process_request(port_, arg0, arg1, arg2, arg3),
      parseSuccessData: _wire2api_unit,
      constMeta: kConnectionProcessRequestConstMeta,
      argValues: [handle, request, serviceEndpoint, routingKeys],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kConnectionProcessRequestConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "connection_process_request",
        argNames: ["handle", "request", "serviceEndpoint", "routingKeys"],
      );

  Future<void> connectionProcessResponse(
      {required int handle, required String response, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    var arg1 = _platform.api2wire_String(response);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_connection_process_response(port_, arg0, arg1),
      parseSuccessData: _wire2api_unit,
      constMeta: kConnectionProcessResponseConstMeta,
      argValues: [handle, response],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kConnectionProcessResponseConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "connection_process_response",
        argNames: ["handle", "response"],
      );

  Future<void> connectionProcessAck(
      {required int handle, required String message, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    var arg1 = _platform.api2wire_String(message);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_connection_process_ack(port_, arg0, arg1),
      parseSuccessData: _wire2api_unit,
      constMeta: kConnectionProcessAckConstMeta,
      argValues: [handle, message],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kConnectionProcessAckConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "connection_process_ack",
        argNames: ["handle", "message"],
      );

  Future<void> connectionProcessProblemReport(
      {required int handle, required String problemReport, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    var arg1 = _platform.api2wire_String(problemReport);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner
          .wire_connection_process_problem_report(port_, arg0, arg1),
      parseSuccessData: _wire2api_unit,
      constMeta: kConnectionProcessProblemReportConstMeta,
      argValues: [handle, problemReport],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kConnectionProcessProblemReportConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "connection_process_problem_report",
        argNames: ["handle", "problemReport"],
      );

  Future<void> connectionSendResponse({required int handle, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_connection_send_response(port_, arg0),
      parseSuccessData: _wire2api_unit,
      constMeta: kConnectionSendResponseConstMeta,
      argValues: [handle],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kConnectionSendResponseConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "connection_send_response",
        argNames: ["handle"],
      );

  Future<void> connectionSendRequest(
      {required int handle,
      required String serviceEndpoint,
      required List<String> routingKeys,
      dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    var arg1 = _platform.api2wire_String(serviceEndpoint);
    var arg2 = _platform.api2wire_StringList(routingKeys);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_connection_send_request(port_, arg0, arg1, arg2),
      parseSuccessData: _wire2api_unit,
      constMeta: kConnectionSendRequestConstMeta,
      argValues: [handle, serviceEndpoint, routingKeys],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kConnectionSendRequestConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "connection_send_request",
        argNames: ["handle", "serviceEndpoint", "routingKeys"],
      );

  Future<void> connectionSendAck({required int handle, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_connection_send_ack(port_, arg0),
      parseSuccessData: _wire2api_unit,
      constMeta: kConnectionSendAckConstMeta,
      argValues: [handle],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kConnectionSendAckConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "connection_send_ack",
        argNames: ["handle"],
      );

  Future<void> connectionSendGenericMessage(
      {required int handle, required String content, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    var arg1 = _platform.api2wire_String(content);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner
          .wire_connection_send_generic_message(port_, arg0, arg1),
      parseSuccessData: _wire2api_unit,
      constMeta: kConnectionSendGenericMessageConstMeta,
      argValues: [handle, content],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kConnectionSendGenericMessageConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "connection_send_generic_message",
        argNames: ["handle", "content"],
      );

  Future<void> connectionSendAriesMessage(
      {required int handle, required String content, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    var arg1 = _platform.api2wire_String(content);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_connection_send_aries_message(port_, arg0, arg1),
      parseSuccessData: _wire2api_unit,
      constMeta: kConnectionSendAriesMessageConstMeta,
      argValues: [handle, content],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kConnectionSendAriesMessageConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "connection_send_aries_message",
        argNames: ["handle", "content"],
      );

  Future<void> connectionCreateInvite(
      {required int handle,
      required String serviceEndpoint,
      required List<String> routingKeys,
      dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    var arg1 = _platform.api2wire_String(serviceEndpoint);
    var arg2 = _platform.api2wire_StringList(routingKeys);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner
          .wire_connection_create_invite(port_, arg0, arg1, arg2),
      parseSuccessData: _wire2api_unit,
      constMeta: kConnectionCreateInviteConstMeta,
      argValues: [handle, serviceEndpoint, routingKeys],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kConnectionCreateInviteConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "connection_create_invite",
        argNames: ["handle", "serviceEndpoint", "routingKeys"],
      );

  Future<String> connectionSerialize({required int handle, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_connection_serialize(port_, arg0),
      parseSuccessData: _wire2api_String,
      constMeta: kConnectionSerializeConstMeta,
      argValues: [handle],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kConnectionSerializeConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "connection_serialize",
        argNames: ["handle"],
      );

  Future<int> connectionDeserialize(
      {required String connectionData, dynamic hint}) {
    var arg0 = _platform.api2wire_String(connectionData);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_connection_deserialize(port_, arg0),
      parseSuccessData: _wire2api_u32,
      constMeta: kConnectionDeserializeConstMeta,
      argValues: [connectionData],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kConnectionDeserializeConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "connection_deserialize",
        argNames: ["connectionData"],
      );

  Future<void> connectionRelease({required int handle, dynamic hint}) {
    var arg0 = api2wire_u32(handle);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_connection_release(port_, arg0),
      parseSuccessData: _wire2api_unit,
      constMeta: kConnectionReleaseConstMeta,
      argValues: [handle],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kConnectionReleaseConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "connection_release",
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
