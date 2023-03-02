import 'package:aries_vcx/aries_vcx.dart';
import 'package:aries_vcx/src/_generated/agency_client_generated.dart';
import 'package:aries_vcx/src/_generated/agent_generated.dart';
import 'package:aries_vcx/src/_generated/connection_generated.dart';
import 'package:aries_vcx/src/_generated/proof_generated.dart';
import 'package:aries_vcx/src/_generated/testing_generated.dart';
import 'package:aries_vcx/src/_generated/trustping_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

/// Represents the external library for aries_vcx
///
/// Will be a DynamicLibrary for dart:io or WasmModule for dart:html

import 'package:aries_vcx/src/_generated/credential_definition_generated.dart';
import 'package:aries_vcx/src/_generated/disclosed_proof_generated.dart';
import 'package:aries_vcx/src/_generated/issuer_credential_generated.dart';
import 'package:aries_vcx/src/_generated/ledger_generated.dart';
import 'package:aries_vcx/src/_generated/logging_generated.dart';
import 'package:aries_vcx/src/_generated/mediator_connection_generated.dart';
import 'package:aries_vcx/src/_generated/out_of_band_receiver_generated.dart';
import 'package:aries_vcx/src/_generated/pool_generated.dart';
import 'package:aries_vcx/src/_generated/revocation_registry_generated.dart';
import 'package:aries_vcx/src/_generated/schema_generated.dart';
import 'package:aries_vcx/src/_generated/utils_generated.dart';
import 'package:aries_vcx/src/_generated/wallet_generated.dart';

AriesVcxInterface createWrapperImpl(ExternalLibrary lib) =>
    throw UnimplementedError();

AgencyClient createAgencyClient() => throw UnimplementedError();
Agent createAgent() => throw UnimplementedError();

Connection createConnection() => throw UnimplementedError();

CredentialDefinition createCredentialDefinition() => throw UnimplementedError();

DisclosedProof createDisclosedProof() => throw UnimplementedError();

IssuerCredential createIssuerCredential() => throw UnimplementedError();

Ledger createLedger() => throw UnimplementedError();

Logging createLogging() => throw UnimplementedError();

MediatorConnection createMediatorConnection() => throw UnimplementedError();

OutOfBandReceiver createOutOfBandReceiver() => throw UnimplementedError();

Pool createPool() => throw UnimplementedError();

Proof createProof() => throw UnimplementedError();

RevocationRegistry createRevocationRegistry() => throw UnimplementedError();

Schema createSchema() => throw UnimplementedError();

Utils createUtils() => throw UnimplementedError();

Testing createTesting() => throw UnimplementedError();

Trustping createTrustping() => throw UnimplementedError();

Wallet createWallet() => throw UnimplementedError();
