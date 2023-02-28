import 'package:aries_vcx/aries_vcx.dart';
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
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

AriesVcxInterface createWrapperImpl(ExternalLibrary dylib) =>
    AriesVcxInterface.library(dylib);

AgencyClient createAgencyClient() => AgencyClientImpl(AriesVcx.externalLibrary);

Agent createAgent() => AgentImpl(AriesVcx.externalLibrary);

CredentialDefinition createCredentialDefinition() =>
    CredentialDefinitionImpl(AriesVcx.externalLibrary);

DisclosedProof createDisclosedProof() =>
    DisclosedProofImpl(AriesVcx.externalLibrary);

IssuerCredential createIssuerCredential() =>
    IssuerCredentialImpl(AriesVcx.externalLibrary);

Ledger createLedger() => LedgerImpl(AriesVcx.externalLibrary);

Logging createLogging() => LoggingImpl(AriesVcx.externalLibrary);

MediatorConnection createMediatorConnection() =>
    MediatorConnectionImpl(AriesVcx.externalLibrary);

OutOfBandReceiver createOutOfBandReceiver() =>
    OutOfBandReceiverImpl(AriesVcx.externalLibrary);

Pool createPool() => PoolImpl(AriesVcx.externalLibrary);

Proof createProof() => ProofImpl(AriesVcx.externalLibrary);

RevocationRegistry createRevocationRegistry() =>
    RevocationRegistryImpl(AriesVcx.externalLibrary);

Schema createSchema() => SchemaImpl(AriesVcx.externalLibrary);

Utils createUtils() => UtilsImpl(AriesVcx.externalLibrary);

Wallet createWallet() => WalletImpl(AriesVcx.externalLibrary);
