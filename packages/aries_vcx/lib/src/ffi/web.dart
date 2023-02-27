import 'package:aries_vcx/aries_vcx.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

typedef ExternalLibrary = WasmModule;

AriesVcxInterface createWrapperImpl(ExternalLibrary module) =>
    AriesVcxInterface.wasm(module);
