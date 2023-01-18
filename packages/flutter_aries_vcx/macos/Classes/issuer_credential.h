#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
typedef struct _Dart_Handle* Dart_Handle;

typedef struct DartCObject DartCObject;

typedef int64_t DartPort;

typedef bool (*DartPostCObjectFnType)(DartPort port_id, void *message);

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

void store_dart_post_cobject(DartPostCObjectFnType ptr);

Dart_Handle get_dart_object(uintptr_t ptr);

void drop_dart_object(uintptr_t ptr);

uintptr_t new_dart_opaque(Dart_Handle handle);

intptr_t init_frb_dart_api_dl(void *obj);

void wire_issuer_credential_deserialize(int64_t port_, struct wire_uint_8_list *credential_data);

void wire_issuer_credential_serialize(int64_t port_, uint32_t handle_credential);

void wire_issuer_credential_update_state_v2(int64_t port_,
                                            uint32_t handle_credential,
                                            uint32_t connection_handle);

void wire_issuer_credential_update_state_with_message_v2(int64_t port_,
                                                         uint32_t handle_credential,
                                                         uint32_t connection_handle,
                                                         struct wire_uint_8_list *message);

void wire_issuer_credential_get_state(int64_t port_, uint32_t handle_credential);

void wire_issuer_credential_get_rev_reg_id(int64_t port_, uint32_t handle_credential);

void wire_issuer_credential_create(int64_t port_, struct wire_uint_8_list *source_id);

void wire_issuer_credential_revoke_local(int64_t port_, uint32_t handle_credential);

void wire_issuer_credential_is_revokable(int64_t port_, uint32_t handle_credential);

void wire_issuer_credential_send_credential(int64_t port_,
                                            uint32_t handle_credential,
                                            uint32_t handle_connection);

void wire_issuer_credential_send_offer_v2(int64_t port_,
                                          uint32_t handle_credential,
                                          uint32_t handle_connection);

void wire_issuer_credential_mark_offer_msg_sent(int64_t port_, uint32_t handle_credential);

void wire_issuer_credential_build_offer_msg_v2(int64_t port_,
                                               uint32_t credential_handle,
                                               uint32_t cred_def_handle,
                                               uint32_t rev_reg_handle,
                                               struct wire_uint_8_list *credential_json,
                                               struct wire_uint_8_list *comment);

void wire_issuer_credential_get_offer_msg(int64_t port_, uint32_t credential_handle);

void wire_issuer_credential_release(int64_t port_, uint32_t credential_handle);

void wire_issuer_credential_get_thread_id(int64_t port_, uint32_t credential_handle);

struct wire_uint_8_list *new_uint_8_list_5(int32_t len);

struct wire_AgencyClientConfig *new_box_autoadd_agency_client_config_1(void);

struct wire_AgentProvisionConfig *new_box_autoadd_agent_provision_config_1(void);

void free_WireSyncReturn(WireSyncReturn ptr);

static int64_t dummy_method_to_enforce_bundling(void) {
    int64_t dummy_var = 0;
    dummy_var ^= ((int64_t) (void*) wire_issuer_credential_deserialize);
    dummy_var ^= ((int64_t) (void*) wire_issuer_credential_serialize);
    dummy_var ^= ((int64_t) (void*) wire_issuer_credential_update_state_v2);
    dummy_var ^= ((int64_t) (void*) wire_issuer_credential_update_state_with_message_v2);
    dummy_var ^= ((int64_t) (void*) wire_issuer_credential_get_state);
    dummy_var ^= ((int64_t) (void*) wire_issuer_credential_get_rev_reg_id);
    dummy_var ^= ((int64_t) (void*) wire_issuer_credential_create);
    dummy_var ^= ((int64_t) (void*) wire_issuer_credential_revoke_local);
    dummy_var ^= ((int64_t) (void*) wire_issuer_credential_is_revokable);
    dummy_var ^= ((int64_t) (void*) wire_issuer_credential_send_credential);
    dummy_var ^= ((int64_t) (void*) wire_issuer_credential_send_offer_v2);
    dummy_var ^= ((int64_t) (void*) wire_issuer_credential_mark_offer_msg_sent);
    dummy_var ^= ((int64_t) (void*) wire_issuer_credential_build_offer_msg_v2);
    dummy_var ^= ((int64_t) (void*) wire_issuer_credential_get_offer_msg);
    dummy_var ^= ((int64_t) (void*) wire_issuer_credential_release);
    dummy_var ^= ((int64_t) (void*) wire_issuer_credential_get_thread_id);
    dummy_var ^= ((int64_t) (void*) new_uint_8_list_5);
    dummy_var ^= ((int64_t) (void*) store_dart_post_cobject);
    dummy_var ^= ((int64_t) (void*) get_dart_object);
    dummy_var ^= ((int64_t) (void*) drop_dart_object);
    dummy_var ^= ((int64_t) (void*) new_dart_opaque);
    return dummy_var;
}