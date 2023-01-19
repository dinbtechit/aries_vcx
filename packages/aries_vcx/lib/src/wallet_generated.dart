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
import 'wallet_generated.io.dart'
    if (dart.library.html) 'wallet_generated.web.dart';

abstract class WalletFFI {
  Future<int> walletOpenAsMain(
      {required WalletConfig walletConfig, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kWalletOpenAsMainConstMeta;

  Future<void> walletCreateMain(
      {required WalletConfig walletConfig, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kWalletCreateMainConstMeta;

  Future<void> walletCloseMain({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kWalletCloseMainConstMeta;

  Future<void> vcxInitIssuerConfig(
      {required IssuerConfig config, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kVcxInitIssuerConfigConstMeta;

  Future<IssuerConfig> configureIssuerWallet(
      {required String enterpriseSeed, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kConfigureIssuerWalletConstMeta;

  Future<String> unpack({required Uint8List data, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kUnpackConstMeta;

  Future<PairwiseInfo> createPairwiseInfo({dynamic hint});

  FlutterRustBridgeTaskConstMeta get kCreatePairwiseInfoConstMeta;

  Future<void> walletImport(
      {required RestoreWalletConfigs config, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kWalletImportConstMeta;

  Future<void> walletExport(
      {required String path, required String backupKey, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kWalletExportConstMeta;

  Future<String> getVerkeyFromWallet({required String did, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGetVerkeyFromWalletConstMeta;

  Future<void> rotateVerkey({required String did, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kRotateVerkeyConstMeta;

  Future<String> rotateVerkeyStart({required String did, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kRotateVerkeyStartConstMeta;

  Future<void> rotateVerkeyApply(
      {required String did, required String tempVk, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kRotateVerkeyApplyConstMeta;
}

class IssuerConfig {
  final String institutionDid;

  IssuerConfig({
    required this.institutionDid,
  });
}

class PairwiseInfo {
  final String pwDid;
  final String pwVk;

  PairwiseInfo({
    required this.pwDid,
    required this.pwVk,
  });
}

class RestoreWalletConfigs {
  final String walletName;
  final String walletKey;
  final String exportedWalletPath;
  final String backupKey;
  final String? walletKeyDerivation;

  RestoreWalletConfigs({
    required this.walletName,
    required this.walletKey,
    required this.exportedWalletPath,
    required this.backupKey,
    this.walletKeyDerivation,
  });
}

class WalletConfig {
  final String walletName;
  final String walletKey;
  final String walletKeyDerivation;
  final String? walletType;
  final String? storageConfig;
  final String? storageCredentials;
  final String? rekey;
  final String? rekeyDerivationMethod;

  WalletConfig({
    required this.walletName,
    required this.walletKey,
    required this.walletKeyDerivation,
    this.walletType,
    this.storageConfig,
    this.storageCredentials,
    this.rekey,
    this.rekeyDerivationMethod,
  });
}

class WalletFFIImpl implements WalletFFI {
  final WalletFFIPlatform _platform;
  factory WalletFFIImpl(ExternalLibrary dylib) =>
      WalletFFIImpl.raw(WalletFFIPlatform(dylib));

  /// Only valid on web/WASM platforms.
  factory WalletFFIImpl.wasm(FutureOr<WasmModule> module) =>
      WalletFFIImpl(module as ExternalLibrary);
  WalletFFIImpl.raw(this._platform);
  Future<int> walletOpenAsMain(
      {required WalletConfig walletConfig, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_wallet_config(walletConfig);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_wallet_open_as_main(port_, arg0),
      parseSuccessData: _wire2api_i32,
      constMeta: kWalletOpenAsMainConstMeta,
      argValues: [walletConfig],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kWalletOpenAsMainConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "wallet_open_as_main",
        argNames: ["walletConfig"],
      );

  Future<void> walletCreateMain(
      {required WalletConfig walletConfig, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_wallet_config(walletConfig);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_wallet_create_main(port_, arg0),
      parseSuccessData: _wire2api_unit,
      constMeta: kWalletCreateMainConstMeta,
      argValues: [walletConfig],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kWalletCreateMainConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "wallet_create_main",
        argNames: ["walletConfig"],
      );

  Future<void> walletCloseMain({dynamic hint}) {
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_wallet_close_main(port_),
      parseSuccessData: _wire2api_unit,
      constMeta: kWalletCloseMainConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kWalletCloseMainConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "wallet_close_main",
        argNames: [],
      );

  Future<void> vcxInitIssuerConfig(
      {required IssuerConfig config, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_issuer_config(config);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_vcx_init_issuer_config(port_, arg0),
      parseSuccessData: _wire2api_unit,
      constMeta: kVcxInitIssuerConfigConstMeta,
      argValues: [config],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kVcxInitIssuerConfigConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "vcx_init_issuer_config",
        argNames: ["config"],
      );

  Future<IssuerConfig> configureIssuerWallet(
      {required String enterpriseSeed, dynamic hint}) {
    var arg0 = _platform.api2wire_String(enterpriseSeed);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_configure_issuer_wallet(port_, arg0),
      parseSuccessData: _wire2api_issuer_config,
      constMeta: kConfigureIssuerWalletConstMeta,
      argValues: [enterpriseSeed],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kConfigureIssuerWalletConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "configure_issuer_wallet",
        argNames: ["enterpriseSeed"],
      );

  Future<String> unpack({required Uint8List data, dynamic hint}) {
    var arg0 = _platform.api2wire_uint_8_list(data);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_unpack(port_, arg0),
      parseSuccessData: _wire2api_String,
      constMeta: kUnpackConstMeta,
      argValues: [data],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kUnpackConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "unpack",
        argNames: ["data"],
      );

  Future<PairwiseInfo> createPairwiseInfo({dynamic hint}) {
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_create_pairwise_info(port_),
      parseSuccessData: _wire2api_pairwise_info,
      constMeta: kCreatePairwiseInfoConstMeta,
      argValues: [],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kCreatePairwiseInfoConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "create_pairwise_info",
        argNames: [],
      );

  Future<void> walletImport(
      {required RestoreWalletConfigs config, dynamic hint}) {
    var arg0 = _platform.api2wire_box_autoadd_restore_wallet_configs(config);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_wallet_import(port_, arg0),
      parseSuccessData: _wire2api_unit,
      constMeta: kWalletImportConstMeta,
      argValues: [config],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kWalletImportConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "wallet_import",
        argNames: ["config"],
      );

  Future<void> walletExport(
      {required String path, required String backupKey, dynamic hint}) {
    var arg0 = _platform.api2wire_String(path);
    var arg1 = _platform.api2wire_String(backupKey);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_wallet_export(port_, arg0, arg1),
      parseSuccessData: _wire2api_unit,
      constMeta: kWalletExportConstMeta,
      argValues: [path, backupKey],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kWalletExportConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "wallet_export",
        argNames: ["path", "backupKey"],
      );

  Future<String> getVerkeyFromWallet({required String did, dynamic hint}) {
    var arg0 = _platform.api2wire_String(did);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_get_verkey_from_wallet(port_, arg0),
      parseSuccessData: _wire2api_String,
      constMeta: kGetVerkeyFromWalletConstMeta,
      argValues: [did],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kGetVerkeyFromWalletConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "get_verkey_from_wallet",
        argNames: ["did"],
      );

  Future<void> rotateVerkey({required String did, dynamic hint}) {
    var arg0 = _platform.api2wire_String(did);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_rotate_verkey(port_, arg0),
      parseSuccessData: _wire2api_unit,
      constMeta: kRotateVerkeyConstMeta,
      argValues: [did],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kRotateVerkeyConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "rotate_verkey",
        argNames: ["did"],
      );

  Future<String> rotateVerkeyStart({required String did, dynamic hint}) {
    var arg0 = _platform.api2wire_String(did);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) => _platform.inner.wire_rotate_verkey_start(port_, arg0),
      parseSuccessData: _wire2api_String,
      constMeta: kRotateVerkeyStartConstMeta,
      argValues: [did],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kRotateVerkeyStartConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "rotate_verkey_start",
        argNames: ["did"],
      );

  Future<void> rotateVerkeyApply(
      {required String did, required String tempVk, dynamic hint}) {
    var arg0 = _platform.api2wire_String(did);
    var arg1 = _platform.api2wire_String(tempVk);
    return _platform.executeNormal(FlutterRustBridgeTask(
      callFfi: (port_) =>
          _platform.inner.wire_rotate_verkey_apply(port_, arg0, arg1),
      parseSuccessData: _wire2api_unit,
      constMeta: kRotateVerkeyApplyConstMeta,
      argValues: [did, tempVk],
      hint: hint,
    ));
  }

  FlutterRustBridgeTaskConstMeta get kRotateVerkeyApplyConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "rotate_verkey_apply",
        argNames: ["did", "tempVk"],
      );

  void dispose() {
    _platform.dispose();
  }
// Section: wire2api

  String _wire2api_String(dynamic raw) {
    return raw as String;
  }

  int _wire2api_i32(dynamic raw) {
    return raw as int;
  }

  IssuerConfig _wire2api_issuer_config(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 1)
      throw Exception('unexpected arr length: expect 1 but see ${arr.length}');
    return IssuerConfig(
      institutionDid: _wire2api_String(arr[0]),
    );
  }

  PairwiseInfo _wire2api_pairwise_info(dynamic raw) {
    final arr = raw as List<dynamic>;
    if (arr.length != 2)
      throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
    return PairwiseInfo(
      pwDid: _wire2api_String(arr[0]),
      pwVk: _wire2api_String(arr[1]),
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
