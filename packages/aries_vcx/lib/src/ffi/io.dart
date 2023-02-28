import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import '../../aries_vcx.dart';



AriesVcxInterface createWrapperImpl(ExternalLibrary dylib) =>
    AriesVcxInterface.library(dylib);
