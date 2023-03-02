// TODO: Put public facing types in this file.

import 'dart:async';

import 'package:aries_vcx/src/_generated/agency_client_generated.dart';
import 'package:aries_vcx/src/_generated/agent_generated.dart';
import 'package:aries_vcx/src/_generated/connection_generated.dart';
import 'package:aries_vcx/src/_generated/credential_definition_generated.dart';
import 'package:aries_vcx/src/_generated/disclosed_proof_generated.dart';
import 'package:aries_vcx/src/_generated/testing_generated.dart';
import 'package:aries_vcx/src/_generated/trustping_generated.dart';
import 'package:aries_vcx/src/ffi/stub.dart'
    if (dart.library.io) 'package:aries_vcx/src/ffi/io.dart'
    if (dart.library.html) 'package:aries_vcx/src/ffi/web.dart';
import 'package:aries_vcx/src/_generated/issuer_credential_generated.dart';
import 'package:aries_vcx/src/_generated/ledger_generated.dart';
import 'package:aries_vcx/src/_generated/logging_generated.dart';
import 'package:aries_vcx/src/_generated/mediator_connection_generated.dart';
import 'package:aries_vcx/src/_generated/out_of_band_receiver_generated.dart';
import 'package:aries_vcx/src/_generated/pool_generated.dart';
import 'package:aries_vcx/src/_generated/proof_generated.dart';
import 'package:aries_vcx/src/_generated/revocation_registry_generated.dart';
import 'package:aries_vcx/src/_generated/schema_generated.dart';
import 'package:aries_vcx/src/_generated/utils_generated.dart';
import 'package:aries_vcx/src/_generated/wallet_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

// ignore: non_constant_identifier_names
final AriesVcx = AriesVcxInterface._();

/// Checks if you are awesome. Spoiler: you are.
class AriesVcxInterface {
  static final AriesVcxInterface _instance = AriesVcx;
  late dynamic externalLibrary;

  AriesVcxInterface._();

  factory AriesVcxInterface.library(ExternalLibrary externalLibrary) {
    _instance.externalLibrary = externalLibrary;
    return _instance;
  }

  factory AriesVcxInterface.wasm(FutureOr<WasmModule> module) {
    _instance.externalLibrary = module;
    return _instance;
  }

  AriesVcxInterface getInstance(
      {required String path, required ExternalLibrary library}) {
    return createWrapperImpl(library);
  }

  AgencyClient get agencyClient => createAgencyClient();

  Agent get agent => createAgent();

  Connection get connection => createConnection();

  CredentialDefinition get credentialDefinition => createCredentialDefinition();

  DisclosedProof get disclosedProof => createDisclosedProof();

  IssuerCredential get issuerCredential => createIssuerCredential();

  Ledger get ledger => createLedger();

  Logging get logging => createLogging();

  MediatorConnection get mediatorConnection => createMediatorConnection();

  OutOfBandReceiver get outOfBandReceiver => createOutOfBandReceiver();

  Pool get pool => createPool();

  Proof get proof => createProof();

  RevocationRegistry get revocationRegistry => createRevocationRegistry();

  Schema get schema => createSchema();

  Utils get utils => createUtils();

  Testing get testing => createTesting();

  Trustping get trustping => createTrustping();

  Wallet get wallet => createWallet();
}
