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

typedef struct wire_PairwiseInfo {
  struct wire_uint_8_list *pw_did;
  struct wire_uint_8_list *pw_vk;
} wire_PairwiseInfo;

typedef struct wire_StringList {
  struct wire_uint_8_list **ptr;
  int32_t len;
} wire_StringList;

typedef struct wire_StringList {
  struct wire_uint_8_list **ptr;
  int32_t len;
} wire_StringList;

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

void wire_connection_create_inviter(int64_t port_, struct wire_PairwiseInfo *pw_info);

void wire_connection_create_invitee(int64_t port_, struct wire_uint_8_list *invitation);

void wire_connection_get_thread_id(int64_t port_, uint32_t handle);

void wire_connection_get_pairwise_info(int64_t port_, uint32_t handle);

void wire_connection_get_remote_did(int64_t port_, uint32_t handle);

void wire_connection_get_remote_vk(int64_t port_, uint32_t handle);

void wire_connection_get_state(int64_t port_, uint32_t handle);

void wire_connection_get_invitation(int64_t port_, uint32_t handle);

void wire_connection_process_invite(int64_t port_,
                                    uint32_t handle,
                                    struct wire_uint_8_list *invitation);

void wire_connection_process_request(int64_t port_,
                                     uint32_t handle,
                                     struct wire_uint_8_list *request,
                                     struct wire_uint_8_list *service_endpoint,
                                     struct wire_StringList *routing_keys);

void wire_connection_process_response(int64_t port_,
                                      uint32_t handle,
                                      struct wire_uint_8_list *response);

void wire_connection_process_ack(int64_t port_, uint32_t handle, struct wire_uint_8_list *message);

void wire_connection_process_problem_report(int64_t port_,
                                            uint32_t handle,
                                            struct wire_uint_8_list *problem_report);

void wire_connection_send_response(int64_t port_, uint32_t handle);

void wire_connection_send_request(int64_t port_,
                                  uint32_t handle,
                                  struct wire_uint_8_list *service_endpoint,
                                  struct wire_StringList *routing_keys);

void wire_connection_send_ack(int64_t port_, uint32_t handle);

void wire_connection_send_generic_message(int64_t port_,
                                          uint32_t handle,
                                          struct wire_uint_8_list *content);

void wire_connection_send_aries_message(int64_t port_,
                                        uint32_t handle,
                                        struct wire_uint_8_list *content);

void wire_connection_create_invite(int64_t port_,
                                   uint32_t handle,
                                   struct wire_uint_8_list *service_endpoint,
                                   struct wire_StringList *routing_keys);

void wire_connection_serialize(int64_t port_, uint32_t handle);

void wire_connection_deserialize(int64_t port_, struct wire_uint_8_list *connection_data);

void wire_connection_release(int64_t port_, uint32_t handle);

struct wire_StringList *new_StringList_2(int32_t len);

struct wire_PairwiseInfo *new_box_autoadd_pairwise_info_2(void);

struct wire_uint_8_list *new_uint_8_list_2(int32_t len);

struct wire_AgencyClientConfig *new_box_autoadd_agency_client_config_0(void);

struct wire_AgentProvisionConfig *new_box_autoadd_agent_provision_config_0(void);

void free_WireSyncReturn(WireSyncReturn ptr);

static int64_t dummy_method_to_enforce_bundling_Connection(void) {
    int64_t dummy_var = 0;
    dummy_var ^= ((int64_t) (void*) wire_connection_create_inviter);
    dummy_var ^= ((int64_t) (void*) wire_connection_create_invitee);
    dummy_var ^= ((int64_t) (void*) wire_connection_get_thread_id);
    dummy_var ^= ((int64_t) (void*) wire_connection_get_pairwise_info);
    dummy_var ^= ((int64_t) (void*) wire_connection_get_remote_did);
    dummy_var ^= ((int64_t) (void*) wire_connection_get_remote_vk);
    dummy_var ^= ((int64_t) (void*) wire_connection_get_state);
    dummy_var ^= ((int64_t) (void*) wire_connection_get_invitation);
    dummy_var ^= ((int64_t) (void*) wire_connection_process_invite);
    dummy_var ^= ((int64_t) (void*) wire_connection_process_request);
    dummy_var ^= ((int64_t) (void*) wire_connection_process_response);
    dummy_var ^= ((int64_t) (void*) wire_connection_process_ack);
    dummy_var ^= ((int64_t) (void*) wire_connection_process_problem_report);
    dummy_var ^= ((int64_t) (void*) wire_connection_send_response);
    dummy_var ^= ((int64_t) (void*) wire_connection_send_request);
    dummy_var ^= ((int64_t) (void*) wire_connection_send_ack);
    dummy_var ^= ((int64_t) (void*) wire_connection_send_generic_message);
    dummy_var ^= ((int64_t) (void*) wire_connection_send_aries_message);
    dummy_var ^= ((int64_t) (void*) wire_connection_create_invite);
    dummy_var ^= ((int64_t) (void*) wire_connection_serialize);
    dummy_var ^= ((int64_t) (void*) wire_connection_deserialize);
    dummy_var ^= ((int64_t) (void*) wire_connection_release);
    dummy_var ^= ((int64_t) (void*) new_StringList_2);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_pairwise_info_2);
    dummy_var ^= ((int64_t) (void*) new_uint_8_list_2);
    dummy_var ^= ((int64_t) (void*) store_dart_post_cobject);
    dummy_var ^= ((int64_t) (void*) get_dart_object);
    dummy_var ^= ((int64_t) (void*) drop_dart_object);
    dummy_var ^= ((int64_t) (void*) new_dart_opaque);
    return dummy_var;
}
