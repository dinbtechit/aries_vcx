import 'dart:ffi';

import 'package:aries_vcx/src/agency_client_generated.dart';

typedef ExternalLibrary = DynamicLibrary;

AgencyClientFFI createWrapperImpl(ExternalLibrary dylib) =>
    AgencyClientFFIImpl(dylib);
