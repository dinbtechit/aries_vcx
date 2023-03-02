import 'package:aries_vcx/aries_vcx.dart';
import 'package:aries_vcx/src/_generated/agency_client_generated.io.dart';
import 'package:aries_vcx/src/_generated/agent_generated.dart';
import 'package:aries_vcx/src/_generated/connection_generated.dart';
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
import 'package:aries_vcx/src/_generated/testing_generated.dart';
import 'package:aries_vcx/src/_generated/trustping_generated.dart';
import 'package:aries_vcx/src/_generated/utils_generated.dart';
import 'package:aries_vcx/src/_generated/wallet_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

AriesVcxInterface createWrapperImpl(ExternalLibrary dylib) =>
    AriesVcxInterface.library(dylib);

AgencyClient createAgencyClient() => AgencyClientImpl(AriesVcx.externalLibrary);

Connection createConnection() => ConnectionImpl(AriesVcx.externalLibrary);

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

Testing createTesting() => TestingImpl(AriesVcx.externalLibrary);

Trustping createTrustping() => TrustpingImpl(AriesVcx.externalLibrary);

Wallet createWallet() => WalletImpl(AriesVcx.externalLibrary);
