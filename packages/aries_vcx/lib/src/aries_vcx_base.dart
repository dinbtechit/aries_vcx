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


enum LibraryType {
  dylib,
  wasm
}

// ignore: non_constant_identifier_names
final AriesVcx = AriesVcxInterface._();

/// Checks if you are awesome. Spoiler: you are.
class AriesVcxInterface {
  static final AriesVcxInterface _instance = AriesVcx;
  late dynamic externalLibrary;
  late String path;
  late LibraryType libraryType;

  AriesVcxInterface._();

  factory AriesVcxInterface.library(ExternalLibrary externalLibrary) {
    _instance.externalLibrary = externalLibrary;
    _instance.path;
    return _instance;
  }
  factory AriesVcxInterface.wasm(FutureOr<WasmModule> module){
    _instance.externalLibrary = module;
    return _instance;
  }

  AriesVcxInterface getInstance({required String path, required ExternalLibrary library}) {
    return createWrapperImpl(library);
  }

  AgencyClient get agencyClient {
    if (_instance.externalLibrary is ExternalLibrary) {
      AgencyClientImpl(_instance.externalLibrary as ExternalLibrary);
    } else if (_instance.externalLibrary is FutureOr<WasmModule>) {
      AgencyClientImpl.wasm(_instance.externalLibrary as FutureOr<WasmModule>);
    }
    throw Exception('unsupported');
  }

  Agent get agent {
    if (_instance.externalLibrary is ExternalLibrary) {
      AgentImpl(_instance.externalLibrary as ExternalLibrary);
    } else if (_instance.externalLibrary is FutureOr<WasmModule>) {
      AgentImpl.wasm(_instance.externalLibrary as FutureOr<WasmModule>);
    }
    throw Exception('unsupported');
  }

  CredentialDefinition get credentialDefinition {
    if (_instance.externalLibrary is ExternalLibrary) {
      CredentialDefinitionImpl(_instance.externalLibrary as ExternalLibrary);
    } else if (_instance.externalLibrary is FutureOr<WasmModule>) {
      CredentialDefinitionImpl.wasm(_instance.externalLibrary as FutureOr<WasmModule>);
    }
    throw Exception('unsupported');
  }

  DisclosedProof get disclosedProof {
    if (_instance.externalLibrary is ExternalLibrary) {
      DisclosedProofImpl(_instance.externalLibrary as ExternalLibrary);
    } else if (_instance.externalLibrary is FutureOr<WasmModule>) {
      DisclosedProofImpl.wasm(_instance.externalLibrary as FutureOr<WasmModule>);
    }
    throw Exception('unsupported');
  }

  IssuerCredential get issuerCredential {
    if (_instance.externalLibrary is ExternalLibrary) {
      IssuerCredentialImpl(_instance.externalLibrary as ExternalLibrary);
    } else if (_instance.externalLibrary is FutureOr<WasmModule>) {
      IssuerCredentialImpl.wasm(_instance.externalLibrary as FutureOr<WasmModule>);
    }
    throw Exception('unsupported');
  }

   Ledger get ledger {
    if (_instance.externalLibrary is ExternalLibrary) {
      LedgerImpl(_instance.externalLibrary as ExternalLibrary);
    } else if (_instance.externalLibrary is FutureOr<WasmModule>) {
      LedgerImpl.wasm(_instance.externalLibrary as FutureOr<WasmModule>);
    }
    throw Exception('unsupported');
  }

  Logging get logging {
    if (_instance.externalLibrary is ExternalLibrary) {
      LoggingImpl(_instance.externalLibrary as ExternalLibrary);
    } else if (_instance.externalLibrary is FutureOr<WasmModule>) {
      LoggingImpl.wasm(_instance.externalLibrary as FutureOr<WasmModule>);
    }
    throw Exception('unsupported');
  }

  MediatorConnection get mediatorConnection {
    if (_instance.externalLibrary is ExternalLibrary) {
      MediatorConnectionImpl(_instance.externalLibrary as ExternalLibrary);
    } else if (_instance.externalLibrary is FutureOr<WasmModule>) {
      MediatorConnectionImpl.wasm(_instance.externalLibrary as FutureOr<WasmModule>);
    }
    throw Exception('unsupported');
  }

  OutOfBandReceiver get outOfBandReceiver {
    if (_instance.externalLibrary is ExternalLibrary) {
      OutOfBandReceiverImpl(_instance.externalLibrary as ExternalLibrary);
    } else if (_instance.externalLibrary is FutureOr<WasmModule>) {
      OutOfBandReceiverImpl.wasm(_instance.externalLibrary as FutureOr<WasmModule>);
    }
    throw Exception('unsupported');
  }

  Pool get pool {
    if (_instance.externalLibrary is ExternalLibrary) {
      PoolImpl(_instance.externalLibrary as ExternalLibrary);
    } else if (_instance.externalLibrary is FutureOr<WasmModule>) {
      PoolImpl.wasm(_instance.externalLibrary as FutureOr<WasmModule>);
    }
    throw Exception('unsupported');
  }

  Proof get proof {
    if (_instance.externalLibrary is ExternalLibrary) {
      ProofImpl(_instance.externalLibrary as ExternalLibrary);
    } else if (_instance.externalLibrary is FutureOr<WasmModule>) {
      ProofImpl.wasm(_instance.externalLibrary as FutureOr<WasmModule>);
    }
    throw Exception('unsupported');
  }

  RevocationRegistry get revocationRegistry {
    if (_instance.externalLibrary is ExternalLibrary) {
      RevocationRegistryImpl(_instance.externalLibrary as ExternalLibrary);
    } else if (_instance.externalLibrary is FutureOr<WasmModule>) {
      RevocationRegistryImpl.wasm(_instance.externalLibrary as FutureOr<WasmModule>);
    }
    throw Exception('unsupported');
  }

  Schema get schema {
    if (_instance.externalLibrary is ExternalLibrary) {
      SchemaImpl(_instance.externalLibrary as ExternalLibrary);
    } else if (_instance.externalLibrary is FutureOr<WasmModule>) {
      SchemaImpl.wasm(_instance.externalLibrary as FutureOr<WasmModule>);
    }
    throw Exception('unsupported');
  }

  Utils get utils {
    if (_instance.externalLibrary is ExternalLibrary) {
      UtilsImpl(_instance.externalLibrary as ExternalLibrary);
    } else if (_instance.externalLibrary is FutureOr<WasmModule>) {
      UtilsImpl.wasm(_instance.externalLibrary as FutureOr<WasmModule>);
    }
    throw Exception('unsupported');
  }

  Wallet get wallet {
    if (_instance.externalLibrary is ExternalLibrary) {
      WalletImpl(_instance.externalLibrary as ExternalLibrary);
    } else if (_instance.externalLibrary is FutureOr<WasmModule>) {
      WalletImpl.wasm(_instance.externalLibrary as FutureOr<WasmModule>);
    }
    throw Exception('unsupported');
  }

}
