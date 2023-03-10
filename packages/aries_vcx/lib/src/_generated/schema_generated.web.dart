// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.67.0.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member, prefer_is_empty, unnecessary_const

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'schema_generated.dart';
export 'schema_generated.dart';

class SchemaPlatform extends FlutterRustBridgeBase<SchemaWire>
    with FlutterRustBridgeSetupMixin {
  SchemaPlatform(FutureOr<WasmModule> dylib) : super(SchemaWire(dylib)) {
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
external SchemaWasmModule get wasmModule;

@JS()
@anonymous
class SchemaWasmModule implements WasmModule {
  external Object /* Promise */ call([String? moduleName]);
  external SchemaWasmModule bind(dynamic thisArg, String moduleName);
  external dynamic /* void */ wire_schema_get_attributes(
      NativePortType port_, String _source_id, String _schema_id);

  external dynamic /* void */ wire_schema_prepare_for_endorser(
      NativePortType port_);

  external dynamic /* void */ wire_schema_create(NativePortType port_,
      String source_id, String name, String version, String data);

  external dynamic /* void */ wire_schema_get_schema_id(
      NativePortType port_, int handle_schema);

  external dynamic /* void */ wire_schema_deserialize(
      NativePortType port_, String serialized);

  external dynamic /* void */ wire_schema_serialize(
      NativePortType port_, int handle_schema);

  external dynamic /* void */ wire_schema_release(
      NativePortType port_, int handle_schema);

  external dynamic /* void */ wire_schema_update_state(
      NativePortType port_, int handle_schema);

  external dynamic /* void */ wire_schema_get_state(
      NativePortType port_, int handle_schema);
}

// Section: WASM wire connector

class SchemaWire extends FlutterRustBridgeWasmWireBase<SchemaWasmModule> {
  SchemaWire(FutureOr<WasmModule> module)
      : super(WasmModule.cast<SchemaWasmModule>(module));

  void wire_schema_get_attributes(
          NativePortType port_, String _source_id, String _schema_id) =>
      wasmModule.wire_schema_get_attributes(port_, _source_id, _schema_id);

  void wire_schema_prepare_for_endorser(NativePortType port_) =>
      wasmModule.wire_schema_prepare_for_endorser(port_);

  void wire_schema_create(NativePortType port_, String source_id, String name,
          String version, String data) =>
      wasmModule.wire_schema_create(port_, source_id, name, version, data);

  void wire_schema_get_schema_id(NativePortType port_, int handle_schema) =>
      wasmModule.wire_schema_get_schema_id(port_, handle_schema);

  void wire_schema_deserialize(NativePortType port_, String serialized) =>
      wasmModule.wire_schema_deserialize(port_, serialized);

  void wire_schema_serialize(NativePortType port_, int handle_schema) =>
      wasmModule.wire_schema_serialize(port_, handle_schema);

  void wire_schema_release(NativePortType port_, int handle_schema) =>
      wasmModule.wire_schema_release(port_, handle_schema);

  void wire_schema_update_state(NativePortType port_, int handle_schema) =>
      wasmModule.wire_schema_update_state(port_, handle_schema);

  void wire_schema_get_state(NativePortType port_, int handle_schema) =>
      wasmModule.wire_schema_get_state(port_, handle_schema);
}
