import 'package:aries_vcx/src/agency_client_generated.io.dart';
import 'package:aries_vcx/src/agent_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import '../../aries_vcx.dart';



AriesVcxInterface createWrapperImpl(ExternalLibrary dylib) =>
    AriesVcxInterface.library(dylib);

AgencyClient createAgencyClient() => AgencyClientImpl(AriesVcx.externalLibrary);
Agent createAgent() => AgentImpl(AriesVcx.externalLibrary);
