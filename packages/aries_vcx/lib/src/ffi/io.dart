import 'dart:ffi';

import '../../aries_vcx.dart';

typedef ExternalLibrary = DynamicLibrary;

AriesVcxInterface createWrapperImpl(ExternalLibrary dylib) =>
    AriesVcxInterface.library(dylib);
