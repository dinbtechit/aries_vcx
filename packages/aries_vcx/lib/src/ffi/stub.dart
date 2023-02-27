import 'package:aries_vcx/aries_vcx.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

/// Represents the external library for aries_vcx
///
/// Will be a DynamicLibrary for dart:io or WasmModule for dart:html

AriesVcxInterface createWrapperImpl(ExternalLibrary lib) =>
    throw UnimplementedError();
