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
import 'pool_generated.io.dart'
    if (dart.library.html) 'pool_generated.web.dart';

abstract class Pool {
  Future<void> openMainPool({required PoolConfig poolConfig, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kOpenMainPoolConstMeta;

  Future<void> closeMainPool({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kCloseMainPoolConstMeta;
}

class PoolConfig {
  final String genesisPath;
  final String? poolName;
  final String? poolConfig;

  PoolConfig({
    required this.genesisPath,
    this.poolName,
    this.poolConfig,
  });
}

class PoolImpl implements Pool {
  final PoolPlatform _platform;
  factory PoolImpl(ExternalLibrary dylib) => PoolImpl.raw(PoolPlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory PoolImpl.wasm(FutureOr<WasmModule> module) =>
      PoolImpl(module as ExternalLibrary);
  PoolImpl.raw(this._platform);
  Future<void> openMainPool({required PoolConfig poolConfig, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_pool_config(poolConfig);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_open_main_pool(port_, arg0),
      parseSuccessData: _wire2api_unit,
      constMeta: kOpenMainPoolConstMeta,
      argValues: [poolConfig],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kOpenMainPoolConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "open_main_pool",
        argNames: ["poolConfig"],
      );

  Future<void> closeMainPool({dynamic hint}) {
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_close_main_pool(port_),
      parseSuccessData: _wire2api_unit,
      constMeta: kCloseMainPoolConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kCloseMainPoolConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "close_main_pool",
        argNames: [],
      );

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

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