import 'package:aries_vcx/src/agency_client_generated.io.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

typedef ExternalLibrary = WasmModule;

AgencyClientFFI createWrapperImpl(ExternalLibrary module) =>
    AgencyClientFFIImpl.wasm(module);
