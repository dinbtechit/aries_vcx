// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.61.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'disclosed_proof_generated.dart';
export 'disclosed_proof_generated.dart';
import 'dart:ffi' as ffi;

class DisclosedProofFFIPlatform
    extends FlutterRustBridgeBase<DisclosedProofFFIWire> {
  DisclosedProofFFIPlatform(ffi.DynamicLibrary dylib)
      : super(DisclosedProofFFIWire(dylib));

// Section: api2wire

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_String(String raw) {
    return api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_opt_String(String? raw) {
    return raw == null ? ffi.nullptr : api2wire_String(raw);
  }

  @protected
  ffi.Pointer<wire_uint_8_list> api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list_4(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }
// Section: finalizer

// Section: api_fill_to_wire

}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.

/// generated by flutter_rust_bridge
class DisclosedProofFFIWire implements FlutterRustBridgeWireBase {
  @internal
  late final dartApi = DartApiDl(init_frb_dart_api_dl);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  DisclosedProofFFIWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  DisclosedProofFFIWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();

  Object get_dart_object(
    int ptr,
  ) {
    return _get_dart_object(
      ptr,
    );
  }

  late final _get_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Handle Function(ffi.UintPtr)>>(
          'get_dart_object');
  late final _get_dart_object =
      _get_dart_objectPtr.asFunction<Object Function(int)>();

  void drop_dart_object(
    int ptr,
  ) {
    return _drop_dart_object(
      ptr,
    );
  }

  late final _drop_dart_objectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.UintPtr)>>(
          'drop_dart_object');
  late final _drop_dart_object =
      _drop_dart_objectPtr.asFunction<void Function(int)>();

  int new_dart_opaque(
    Object handle,
  ) {
    return _new_dart_opaque(
      handle,
    );
  }

  late final _new_dart_opaquePtr =
      _lookup<ffi.NativeFunction<ffi.UintPtr Function(ffi.Handle)>>(
          'new_dart_opaque');
  late final _new_dart_opaque =
      _new_dart_opaquePtr.asFunction<int Function(Object)>();

  int init_frb_dart_api_dl(
    ffi.Pointer<ffi.Void> obj,
  ) {
    return _init_frb_dart_api_dl(
      obj,
    );
  }

  late final _init_frb_dart_api_dlPtr =
      _lookup<ffi.NativeFunction<ffi.IntPtr Function(ffi.Pointer<ffi.Void>)>>(
          'init_frb_dart_api_dl');
  late final _init_frb_dart_api_dl = _init_frb_dart_api_dlPtr
      .asFunction<int Function(ffi.Pointer<ffi.Void>)>();

  void wire_disclosed_proof_create_with_request(
    int port_,
    ffi.Pointer<wire_uint_8_list> source_id,
    ffi.Pointer<wire_uint_8_list> proof_req,
  ) {
    return _wire_disclosed_proof_create_with_request(
      port_,
      source_id,
      proof_req,
    );
  }

  late final _wire_disclosed_proof_create_with_requestPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
                  ffi.Pointer<wire_uint_8_list>)>>(
      'wire_disclosed_proof_create_with_request');
  late final _wire_disclosed_proof_create_with_request =
      _wire_disclosed_proof_create_with_requestPtr.asFunction<
          void Function(int, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>();

  void wire_disclosed_proof_release(
    int port_,
    int handle,
  ) {
    return _wire_disclosed_proof_release(
      port_,
      handle,
    );
  }

  late final _wire_disclosed_proof_releasePtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Uint32)>>(
          'wire_disclosed_proof_release');
  late final _wire_disclosed_proof_release =
      _wire_disclosed_proof_releasePtr.asFunction<void Function(int, int)>();

  void wire_disclosed_proof_send_proof(
    int port_,
    int handle,
    int handle_connection,
  ) {
    return _wire_disclosed_proof_send_proof(
      port_,
      handle,
      handle_connection,
    );
  }

  late final _wire_disclosed_proof_send_proofPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Uint32,
              ffi.Uint32)>>('wire_disclosed_proof_send_proof');
  late final _wire_disclosed_proof_send_proof =
      _wire_disclosed_proof_send_proofPtr
          .asFunction<void Function(int, int, int)>();

  void wire_disclosed_proof_reject_proof(
    int port_,
    int handle,
    int handle_connection,
  ) {
    return _wire_disclosed_proof_reject_proof(
      port_,
      handle,
      handle_connection,
    );
  }

  late final _wire_disclosed_proof_reject_proofPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Uint32,
              ffi.Uint32)>>('wire_disclosed_proof_reject_proof');
  late final _wire_disclosed_proof_reject_proof =
      _wire_disclosed_proof_reject_proofPtr
          .asFunction<void Function(int, int, int)>();

  void wire_disclosed_proof_get_proof_msg(
    int port_,
    int handle,
  ) {
    return _wire_disclosed_proof_get_proof_msg(
      port_,
      handle,
    );
  }

  late final _wire_disclosed_proof_get_proof_msgPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Uint32)>>(
          'wire_disclosed_proof_get_proof_msg');
  late final _wire_disclosed_proof_get_proof_msg =
      _wire_disclosed_proof_get_proof_msgPtr
          .asFunction<void Function(int, int)>();

  void wire_disclosed_proof_serialize(
    int port_,
    int handle,
  ) {
    return _wire_disclosed_proof_serialize(
      port_,
      handle,
    );
  }

  late final _wire_disclosed_proof_serializePtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Uint32)>>(
          'wire_disclosed_proof_serialize');
  late final _wire_disclosed_proof_serialize =
      _wire_disclosed_proof_serializePtr.asFunction<void Function(int, int)>();

  void wire_disclosed_proof_deserialize(
    int port_,
    ffi.Pointer<wire_uint_8_list> data,
  ) {
    return _wire_disclosed_proof_deserialize(
      port_,
      data,
    );
  }

  late final _wire_disclosed_proof_deserializePtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>(
      'wire_disclosed_proof_deserialize');
  late final _wire_disclosed_proof_deserialize =
      _wire_disclosed_proof_deserializePtr
          .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_v2_disclosed_proof_update_state(
    int port_,
    int handle,
    int connection_handle,
  ) {
    return _wire_v2_disclosed_proof_update_state(
      port_,
      handle,
      connection_handle,
    );
  }

  late final _wire_v2_disclosed_proof_update_statePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Uint32,
              ffi.Uint32)>>('wire_v2_disclosed_proof_update_state');
  late final _wire_v2_disclosed_proof_update_state =
      _wire_v2_disclosed_proof_update_statePtr
          .asFunction<void Function(int, int, int)>();

  void wire_v2_disclosed_proof_update_state_with_message(
    int port_,
    int handle,
    ffi.Pointer<wire_uint_8_list> message,
    int connection_handle,
  ) {
    return _wire_v2_disclosed_proof_update_state_with_message(
      port_,
      handle,
      message,
      connection_handle,
    );
  }

  late final _wire_v2_disclosed_proof_update_state_with_messagePtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Int64, ffi.Uint32,
                  ffi.Pointer<wire_uint_8_list>, ffi.Uint32)>>(
      'wire_v2_disclosed_proof_update_state_with_message');
  late final _wire_v2_disclosed_proof_update_state_with_message =
      _wire_v2_disclosed_proof_update_state_with_messagePtr.asFunction<
          void Function(int, int, ffi.Pointer<wire_uint_8_list>, int)>();

  void wire_disclosed_proof_get_state(
    int port_,
    int handle,
  ) {
    return _wire_disclosed_proof_get_state(
      port_,
      handle,
    );
  }

  late final _wire_disclosed_proof_get_statePtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Uint32)>>(
          'wire_disclosed_proof_get_state');
  late final _wire_disclosed_proof_get_state =
      _wire_disclosed_proof_get_statePtr.asFunction<void Function(int, int)>();

  void wire_disclosed_proof_get_requests(
    int port_,
    int handle_connection,
  ) {
    return _wire_disclosed_proof_get_requests(
      port_,
      handle_connection,
    );
  }

  late final _wire_disclosed_proof_get_requestsPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Uint32)>>(
          'wire_disclosed_proof_get_requests');
  late final _wire_disclosed_proof_get_requests =
      _wire_disclosed_proof_get_requestsPtr
          .asFunction<void Function(int, int)>();

  void wire_disclosed_proof_retrieve_credentials(
    int port_,
    int handle,
  ) {
    return _wire_disclosed_proof_retrieve_credentials(
      port_,
      handle,
    );
  }

  late final _wire_disclosed_proof_retrieve_credentialsPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Uint32)>>(
          'wire_disclosed_proof_retrieve_credentials');
  late final _wire_disclosed_proof_retrieve_credentials =
      _wire_disclosed_proof_retrieve_credentialsPtr
          .asFunction<void Function(int, int)>();

  void wire_disclosed_proof_get_proof_request_attachment(
    int port_,
    int handle,
  ) {
    return _wire_disclosed_proof_get_proof_request_attachment(
      port_,
      handle,
    );
  }

  late final _wire_disclosed_proof_get_proof_request_attachmentPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Uint32)>>(
          'wire_disclosed_proof_get_proof_request_attachment');
  late final _wire_disclosed_proof_get_proof_request_attachment =
      _wire_disclosed_proof_get_proof_request_attachmentPtr
          .asFunction<void Function(int, int)>();

  void wire_disclosed_proof_generate_proof(
    int port_,
    int handle,
    ffi.Pointer<wire_uint_8_list> credentials,
    ffi.Pointer<wire_uint_8_list> self_attested_attrs,
  ) {
    return _wire_disclosed_proof_generate_proof(
      port_,
      handle,
      credentials,
      self_attested_attrs,
    );
  }

  late final _wire_disclosed_proof_generate_proofPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(
                  ffi.Int64,
                  ffi.Uint32,
                  ffi.Pointer<wire_uint_8_list>,
                  ffi.Pointer<wire_uint_8_list>)>>(
      'wire_disclosed_proof_generate_proof');
  late final _wire_disclosed_proof_generate_proof =
      _wire_disclosed_proof_generate_proofPtr.asFunction<
          void Function(int, int, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>();

  void wire_disclosed_proof_decline_presentation_request(
    int port_,
    int handle,
    int connection_handle,
    ffi.Pointer<wire_uint_8_list> reason,
    ffi.Pointer<wire_uint_8_list> proposal,
  ) {
    return _wire_disclosed_proof_decline_presentation_request(
      port_,
      handle,
      connection_handle,
      reason,
      proposal,
    );
  }

  late final _wire_disclosed_proof_decline_presentation_requestPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(
                  ffi.Int64,
                  ffi.Uint32,
                  ffi.Uint32,
                  ffi.Pointer<wire_uint_8_list>,
                  ffi.Pointer<wire_uint_8_list>)>>(
      'wire_disclosed_proof_decline_presentation_request');
  late final _wire_disclosed_proof_decline_presentation_request =
      _wire_disclosed_proof_decline_presentation_requestPtr.asFunction<
          void Function(int, int, int, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>();

  void wire_disclosed_proof_get_thread_id(
    int port_,
    int handle,
  ) {
    return _wire_disclosed_proof_get_thread_id(
      port_,
      handle,
    );
  }

  late final _wire_disclosed_proof_get_thread_idPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64, ffi.Uint32)>>(
          'wire_disclosed_proof_get_thread_id');
  late final _wire_disclosed_proof_get_thread_id =
      _wire_disclosed_proof_get_thread_idPtr
          .asFunction<void Function(int, int)>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list_4(
    int len,
  ) {
    return _new_uint_8_list_4(
      len,
    );
  }

  late final _new_uint_8_list_4Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_uint_8_list> Function(
              ffi.Int32)>>('new_uint_8_list_4');
  late final _new_uint_8_list_4 = _new_uint_8_list_4Ptr
      .asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  ffi.Pointer<wire_AgencyClientConfig>
      new_box_autoadd_agency_client_config_1() {
    return _new_box_autoadd_agency_client_config_1();
  }

  late final _new_box_autoadd_agency_client_config_1Ptr = _lookup<
          ffi.NativeFunction<ffi.Pointer<wire_AgencyClientConfig> Function()>>(
      'new_box_autoadd_agency_client_config_1');
  late final _new_box_autoadd_agency_client_config_1 =
      _new_box_autoadd_agency_client_config_1Ptr
          .asFunction<ffi.Pointer<wire_AgencyClientConfig> Function()>();

  ffi.Pointer<wire_AgentProvisionConfig>
      new_box_autoadd_agent_provision_config_1() {
    return _new_box_autoadd_agent_provision_config_1();
  }

  late final _new_box_autoadd_agent_provision_config_1Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_AgentProvisionConfig>
              Function()>>('new_box_autoadd_agent_provision_config_1');
  late final _new_box_autoadd_agent_provision_config_1 =
      _new_box_autoadd_agent_provision_config_1Ptr
          .asFunction<ffi.Pointer<wire_AgentProvisionConfig> Function()>();

  void free_WireSyncReturn(
    WireSyncReturn ptr,
  ) {
    return _free_WireSyncReturn(
      ptr,
    );
  }

  late final _free_WireSyncReturnPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturn)>>(
          'free_WireSyncReturn');
  late final _free_WireSyncReturn =
      _free_WireSyncReturnPtr.asFunction<void Function(WireSyncReturn)>();
}

class _Dart_Handle extends ffi.Opaque {}

class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

class wire_AgencyClientConfig extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> agency_did;

  external ffi.Pointer<wire_uint_8_list> agency_endpoint;

  external ffi.Pointer<wire_uint_8_list> agency_verkey;

  external ffi.Pointer<wire_uint_8_list> remote_to_sdk_did;

  external ffi.Pointer<wire_uint_8_list> remote_to_sdk_verkey;

  external ffi.Pointer<wire_uint_8_list> sdk_to_remote_did;

  external ffi.Pointer<wire_uint_8_list> sdk_to_remote_verkey;
}

class wire_AgentProvisionConfig extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> agency_did;

  external ffi.Pointer<wire_uint_8_list> agency_verkey;

  external ffi.Pointer<wire_uint_8_list> agency_endpoint;

  external ffi.Pointer<wire_uint_8_list> agent_seed;
}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<ffi.Bool Function(DartPort, ffi.Pointer<ffi.Void>)>>;
typedef DartPort = ffi.Int64;
