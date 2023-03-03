#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
typedef struct _Dart_Handle* Dart_Handle;

typedef struct DartCObject DartCObject;

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

typedef struct wire_IssuerConfig {
  struct wire_uint_8_list *institution_did;
} wire_IssuerConfig;

typedef struct wire_RestoreWalletConfigs {
  struct wire_uint_8_list *wallet_name;
  struct wire_uint_8_list *wallet_key;
  struct wire_uint_8_list *exported_wallet_path;
  struct wire_uint_8_list *backup_key;
  struct wire_uint_8_list *wallet_key_derivation;
} wire_RestoreWalletConfigs;

typedef struct wire_WalletConfig {
  struct wire_uint_8_list *wallet_name;
  struct wire_uint_8_list *wallet_key;
  struct wire_uint_8_list *wallet_key_derivation;
  struct wire_uint_8_list *wallet_type;
  struct wire_uint_8_list *storage_config;
  struct wire_uint_8_list *storage_credentials;
  struct wire_uint_8_list *rekey;
  struct wire_uint_8_list *rekey_derivation_method;
} wire_WalletConfig;

typedef struct wire_RevocationRegistryConfig {
  struct wire_uint_8_list *issuer_did;
  struct wire_uint_8_list *cred_def_id;
  uint32_t tag;
  struct wire_uint_8_list *tails_dir;
  uint32_t max_creds;
} wire_RevocationRegistryConfig;

typedef struct wire_PoolConfig {
  struct wire_uint_8_list *genesis_path;
  struct wire_uint_8_list *pool_name;
  struct wire_uint_8_list *pool_config;
} wire_PoolConfig;

typedef int64_t DartPort;

typedef bool (*DartPostCObjectFnType)(DartPort port_id, void *message);

typedef struct wire_AgencyClientConfig {
  struct wire_uint_8_list *agency_did;
  struct wire_uint_8_list *agency_endpoint;
  struct wire_uint_8_list *agency_verkey;
  struct wire_uint_8_list *remote_to_sdk_did;
  struct wire_uint_8_list *remote_to_sdk_verkey;
  struct wire_uint_8_list *sdk_to_remote_did;
  struct wire_uint_8_list *sdk_to_remote_verkey;
} wire_AgencyClientConfig;

typedef struct wire_AgentProvisionConfig {
  struct wire_uint_8_list *agency_did;
  struct wire_uint_8_list *agency_verkey;
  struct wire_uint_8_list *agency_endpoint;
  struct wire_uint_8_list *agent_seed;
} wire_AgentProvisionConfig;

typedef struct DartCObject *WireSyncReturn;

struct wire_IssuerConfig *new_box_autoadd_issuer_config_18(void);

struct wire_RestoreWalletConfigs *new_box_autoadd_restore_wallet_configs_18(void);

struct wire_WalletConfig *new_box_autoadd_wallet_config_18(void);

struct wire_RevocationRegistryConfig *new_box_autoadd_revocation_registry_config_13(void);

struct wire_PoolConfig *new_box_autoadd_pool_config_11(void);

void store_dart_post_cobject(DartPostCObjectFnType ptr);

Dart_Handle get_dart_object(uintptr_t ptr);

void drop_dart_object(uintptr_t ptr);

uintptr_t new_dart_opaque(Dart_Handle handle);

intptr_t init_frb_dart_api_dl(void *obj);

void wire_update_webhook_url(int64_t port_, struct wire_uint_8_list *webhook_url);

void wire_create_agency_client_for_main_wallet(int64_t port_,
                                               struct wire_AgencyClientConfig *config);

void wire_provision_cloud_agent(int64_t port_, struct wire_AgentProvisionConfig *config);

struct wire_AgencyClientConfig *new_box_autoadd_agency_client_config_0(void);

struct wire_AgentProvisionConfig *new_box_autoadd_agent_provision_config_0(void);

struct wire_uint_8_list *new_uint_8_list_0(int32_t len);

void free_WireSyncReturn(WireSyncReturn ptr);

static int64_t dummy_method_to_enforce_bundling_AgencyClient(void) {
    int64_t dummy_var = 0;
    dummy_var ^= ((int64_t) (void*) wire_update_webhook_url);
    dummy_var ^= ((int64_t) (void*) wire_create_agency_client_for_main_wallet);
    dummy_var ^= ((int64_t) (void*) wire_provision_cloud_agent);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_agency_client_config_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_agent_provision_config_0);
    dummy_var ^= ((int64_t) (void*) new_uint_8_list_0);
    dummy_var ^= ((int64_t) (void*) free_WireSyncReturn);
    dummy_var ^= ((int64_t) (void*) store_dart_post_cobject);
    dummy_var ^= ((int64_t) (void*) get_dart_object);
    dummy_var ^= ((int64_t) (void*) drop_dart_object);
    dummy_var ^= ((int64_t) (void*) new_dart_opaque);
    return dummy_var;
}

#include "agent.h"
#include "connection.h"
#include "credential_definition.h"
#include "disclosed_proof.h"
#include "issuer_credential.h"
#include "ledger.h"
#include "logging.h"
#include "mediator_connection.h"
#include "out_of_band_receiver.h"
#include "out_of_band_sender.h"
#include "pool.h"
#include "proof.h"
#include "revocation_registry.h"
#include "schema.h"
#include "testing.h"
#include "trustping.h"
#include "utils.h"
#include "wallet.h"
static int64_t dummy_method_to_enforce_bundling(void) {
    int64_t dummy_var = 0;
    dummy_var ^= ((int64_t) (void*) dummy_method_to_enforce_bundling_AgencyClient);
    dummy_var ^= ((int64_t) (void*) dummy_method_to_enforce_bundling_Agent);
    dummy_var ^= ((int64_t) (void*) dummy_method_to_enforce_bundling_Connection);
    dummy_var ^= ((int64_t) (void*) dummy_method_to_enforce_bundling_CredentialDefinition);
    dummy_var ^= ((int64_t) (void*) dummy_method_to_enforce_bundling_DisclosedProof);
    dummy_var ^= ((int64_t) (void*) dummy_method_to_enforce_bundling_IssuerCredential);
    dummy_var ^= ((int64_t) (void*) dummy_method_to_enforce_bundling_Ledger);
    dummy_var ^= ((int64_t) (void*) dummy_method_to_enforce_bundling_Logging);
    dummy_var ^= ((int64_t) (void*) dummy_method_to_enforce_bundling_MediatorConnection);
    dummy_var ^= ((int64_t) (void*) dummy_method_to_enforce_bundling_OutOfBandReceiver);
    dummy_var ^= ((int64_t) (void*) dummy_method_to_enforce_bundling_OutOfBandSender);
    dummy_var ^= ((int64_t) (void*) dummy_method_to_enforce_bundling_Pool);
    dummy_var ^= ((int64_t) (void*) dummy_method_to_enforce_bundling_Proof);
    dummy_var ^= ((int64_t) (void*) dummy_method_to_enforce_bundling_RevocationRegistry);
    dummy_var ^= ((int64_t) (void*) dummy_method_to_enforce_bundling_Schema);
    dummy_var ^= ((int64_t) (void*) dummy_method_to_enforce_bundling_Testing);
    dummy_var ^= ((int64_t) (void*) dummy_method_to_enforce_bundling_Trustping);
    dummy_var ^= ((int64_t) (void*) dummy_method_to_enforce_bundling_Utils);
    dummy_var ^= ((int64_t) (void*) dummy_method_to_enforce_bundling_Wallet);
    return dummy_var;
}
