// TODO: Put public facing types in this file.

import 'dart:async';

import 'package:aries_vcx/src/credential_definition_generated.dart';
import 'package:aries_vcx/src/disclosed_proof_generated.dart';
import 'package:aries_vcx/src/ffi/stub.dart'
if (dart.library.io) 'package:aries_vcx/src/ffi/io.dart'
if (dart.library.html) 'package:aries_vcx/src/ffi/web.dart';
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
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'agency_client_generated.dart';
import 'agent_generated.dart';



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
  factory AriesVcxInterface.wasm(FutureOr<WasmModule> module){
    _instance.externalLibrary = module;
    return _instance;
  }

  AriesVcxInterface getInstance({required String path, required ExternalLibrary library}) {
    return createWrapperImpl(library);
  }

  AgencyClient get agencyClient => createAgencyClient();

  Agent get agent => createAgent();

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

  Wallet get wallet => createWallet();

}
