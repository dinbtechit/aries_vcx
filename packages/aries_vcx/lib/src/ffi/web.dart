import 'package:aries_vcx/aries_vcx.dart';
import 'package:aries_vcx/src/_generated/connection_generated.dart';
import 'package:aries_vcx/src/_generated/testing_generated.dart';
import 'package:aries_vcx/src/_generated/trustping_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:aries_vcx/src/_generated/agency_client_generated.dart';
import 'package:aries_vcx/src/_generated/agent_generated.dart';
import 'package:aries_vcx/src/_generated/credential_definition_generated.dart';
import 'package:aries_vcx/src/_generated/disclosed_proof_generated.dart';
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

typedef ExternalLibrary = WasmModule;

AriesVcxInterface createWrapperImpl(ExternalLibrary module) =>
    AriesVcxInterface.wasm(module);

AgencyClient createAgencyClient() =>
    AgencyClientImpl.wasm(AriesVcx.externalLibrary);

Agent createAgent() => AgentImpl.wasm(AriesVcx.externalLibrary);

Connection createConnection() => ConnectionImpl.wasm(AriesVcx.externalLibrary);

CredentialDefinition createCredentialDefinition() =>
    CredentialDefinitionImpl.wasm(AriesVcx.externalLibrary);

DisclosedProof createDisclosedProof() =>
    DisclosedProofImpl.wasm(AriesVcx.externalLibrary);

IssuerCredential createIssuerCredential() =>
    IssuerCredentialImpl.wasm(AriesVcx.externalLibrary);

Ledger createLedger() => LedgerImpl.wasm(AriesVcx.externalLibrary);

Logging createLogging() => LoggingImpl.wasm(AriesVcx.externalLibrary);

MediatorConnection createMediatorConnection() =>
    MediatorConnectionImpl.wasm(AriesVcx.externalLibrary);

OutOfBandReceiver createOutOfBandReceiver() =>
    OutOfBandReceiverImpl.wasm(AriesVcx.externalLibrary);

Pool createPool() => PoolImpl.wasm(AriesVcx.externalLibrary);

Proof createProof() => ProofImpl.wasm(AriesVcx.externalLibrary);

RevocationRegistry createRevocationRegistry() =>
    RevocationRegistryImpl.wasm(AriesVcx.externalLibrary);

Schema createSchema() => SchemaImpl.wasm(AriesVcx.externalLibrary);

Utils createUtils() => UtilsImpl.wasm(AriesVcx.externalLibrary);

Testing createTesting() => TestingImpl.wasm(AriesVcx.externalLibrary);

Trustping createTrustping() => TrustpingImpl.wasm(AriesVcx.externalLibrary);

Wallet createWallet() => WalletImpl.wasm(AriesVcx.externalLibrary);
