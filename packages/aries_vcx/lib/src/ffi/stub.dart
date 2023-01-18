import 'package:aries_vcx/src/agency_client_generated.io.dart';

/// Represents the external library for aries_vcx
///
/// Will be a DynamicLibrary for dart:io or WasmModule for dart:html
typedef ExternalLibrary = Object;

AgencyClientFFI createWrapperImpl(ExternalLibrary lib) =>
    throw UnimplementedError();
