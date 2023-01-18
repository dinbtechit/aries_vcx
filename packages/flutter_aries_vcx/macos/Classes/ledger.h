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

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

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

void store_dart_post_cobject(DartPostCObjectFnType ptr);

Dart_Handle get_dart_object(uintptr_t ptr);

void drop_dart_object(uintptr_t ptr);

uintptr_t new_dart_opaque(Dart_Handle handle);

intptr_t init_frb_dart_api_dl(void *obj);

void wire_get_ledger_author_agreement(int64_t port_);

void wire_set_active_txn_author_agreement_meta(int64_t port_,
                                               struct wire_uint_8_list *text,
                                               struct wire_uint_8_list *version,
                                               struct wire_uint_8_list *hash,
                                               struct wire_uint_8_list *acc_mech_type,
                                               uint64_t time_of_acceptance);

void wire_create_service(int64_t port_,
                         struct wire_uint_8_list *target_did,
                         struct wire_StringList *recipient_keys,
                         struct wire_StringList *routing_keys,
                         struct wire_uint_8_list *endpoint);

void wire_get_service_from_ledger(int64_t port_, struct wire_uint_8_list *target_did);

void wire_get_verkey_from_ledger(int64_t port_, struct wire_uint_8_list *did);

void wire_get_ledger_txn(int64_t port_, int32_t seq_no, struct wire_uint_8_list *submitter_did);

struct wire_StringList *new_StringList_6(int32_t len);

struct wire_uint_8_list *new_uint_8_list_6(int32_t len);

struct wire_AgencyClientConfig *new_box_autoadd_agency_client_config_1(void);

struct wire_AgentProvisionConfig *new_box_autoadd_agent_provision_config_1(void);

void free_WireSyncReturn(WireSyncReturn ptr);

static int64_t dummy_method_to_enforce_bundling(void) {
    int64_t dummy_var = 0;
    dummy_var ^= ((int64_t) (void*) wire_get_ledger_author_agreement);
    dummy_var ^= ((int64_t) (void*) wire_set_active_txn_author_agreement_meta);
    dummy_var ^= ((int64_t) (void*) wire_create_service);
    dummy_var ^= ((int64_t) (void*) wire_get_service_from_ledger);
    dummy_var ^= ((int64_t) (void*) wire_get_verkey_from_ledger);
    dummy_var ^= ((int64_t) (void*) wire_get_ledger_txn);
    dummy_var ^= ((int64_t) (void*) new_StringList_6);
    dummy_var ^= ((int64_t) (void*) new_uint_8_list_6);
    dummy_var ^= ((int64_t) (void*) store_dart_post_cobject);
    dummy_var ^= ((int64_t) (void*) get_dart_object);
    dummy_var ^= ((int64_t) (void*) drop_dart_object);
    dummy_var ^= ((int64_t) (void*) new_dart_opaque);
    return dummy_var;
}