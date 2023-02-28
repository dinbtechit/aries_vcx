import 'package:aries_vcx/aries_vcx.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

/// Represents the external library for aries_vcx
///
/// Will be a DynamicLibrary for dart:io or WasmModule for dart:html
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

import '../agency_client_generated.dart';
import '../agent_generated.dart';
import 'package:aries_vcx/src/credential_definition_generated.dart';
import 'package:aries_vcx/src/disclosed_proof_generated.dart';
import 'package:aries_vcx/src/issuer_credential_generated.dart';
import 'package:aries_vcx/src/ledger_generated.dart';
import 'package:aries_vcx/src/logging_generated.dart';
import 'package:aries_vcx/src/mediator_connection_generated.dart';
import 'package:aries_vcx/src/out_of_band_receiver_generated.dart';
import 'package:aries_vcx/src/pool_generated.dart';
import 'package:aries_vcx/src/proof_generated.dart';
import 'package:aries_vcx/src/revocation_registry_generated.dart';
import 'package:aries_vcx/src/schema_generated.dart';
import 'package:aries_vcx/src/utils_generated.dart';
import 'package:aries_vcx/src/wallet_generated.dart';


AriesVcxInterface createWrapperImpl(ExternalLibrary lib) =>
    throw UnimplementedError();

AgencyClient createAgencyClient() => throw UnimplementedError();
Agent createAgent() => throw UnimplementedError();
CredentialDefinition createCredentialDefinition() =>
    throw UnimplementedError();

DisclosedProof createDisclosedProof() =>
    throw UnimplementedError();

IssuerCredential createIssuerCredential() =>
    throw UnimplementedError();

Ledger createLedger() => throw UnimplementedError();

Logging createLogging() => throw UnimplementedError();

MediatorConnection createMediatorConnection() =>
    throw UnimplementedError();

OutOfBandReceiver createOutOfBandReceiver() =>
    throw UnimplementedError();

Pool createPool() => throw UnimplementedError();

Proof createProof() => throw UnimplementedError();

RevocationRegistry createRevocationRegistry() =>
    throw UnimplementedError();

Schema createSchema() => throw UnimplementedError();

Utils createUtils() => throw UnimplementedError();

Wallet createWallet() => throw UnimplementedError();
