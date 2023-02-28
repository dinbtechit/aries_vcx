import 'package:aries_vcx/aries_vcx.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'package:aries_vcx/src/agency_client_generated.io.dart';
import 'package:aries_vcx/src/agent_generated.dart';
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


typedef ExternalLibrary = WasmModule;

AriesVcxInterface createWrapperImpl(ExternalLibrary module) =>
    AriesVcxInterface.wasm(module);

AgencyClient createAgencyClient() => AgencyClientImpl.wasm(AriesVcx.externalLibrary);

Agent createAgent() => AgentImpl.wasm(AriesVcx.externalLibrary);

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

Wallet createWallet() => WalletImpl.wasm(AriesVcx.externalLibrary);
