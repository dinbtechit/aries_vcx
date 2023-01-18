// TODO: Put public facing types in this file.

import 'dart:ffi';

import 'agency_client_generated.io.dart';

/// Checks if you are awesome. Spoiler: you are.
class AgencyClient {
  AgencyClientFFI agencyClientFFI =
      AgencyClientFFIImpl.raw(AgencyClientFFIPlatform(DynamicLibrary.open('')));

  Future<void> updateWebhookUrl({required String webhookUrl}) async {
    await agencyClientFFI.updateWebhookUrl(webhookUrl: webhookUrl);
  }

  Future<void> createAgency() async {
    await agencyClientFFI.createAgencyClientForMainWallet(
        config: AgencyClientConfig(
            agencyDid: 'agencyDid',
            agencyEndpoint: 'agencyEndpoint',
            agencyVerkey: 'agencyVerkey',
            remoteToSdkDid: 'remoteToSdkDid',
            remoteToSdkVerkey: 'remoteToSdkVerkey',
            sdkToRemoteDid: 'sdkToRemoteDid',
            sdkToRemoteVerkey: 'sdkToRemoteVerkey'));
  }

  Future<AgencyClientConfig> provisionCloudAgent() async {
    return await agencyClientFFI.provisionCloudAgent(
        config: AgentProvisionConfig(
            agencyDid: 'agencyDid',
            agencyVerkey: 'agencyVerkey',
            agencyEndpoint: 'agencyEndpoint'));
  }
}
