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

typedef int64_t DartPort;

typedef bool (*DartPostCObjectFnType)(DartPort port_id, void *message);

typedef struct DartCObject *WireSyncReturn;

struct wire_AgencyClientConfig *new_box_autoadd_agency_client_config_1(void);

struct wire_AgentProvisionConfig *new_box_autoadd_agent_provision_config_1(void);

void store_dart_post_cobject(DartPostCObjectFnType ptr);

Dart_Handle get_dart_object(uintptr_t ptr);

void drop_dart_object(uintptr_t ptr);

uintptr_t new_dart_opaque(Dart_Handle handle);

intptr_t init_frb_dart_api_dl(void *obj);

void free_WireSyncReturn(WireSyncReturn ptr);

static int64_t dummy_method_to_enforce_bundling(void) {
    int64_t dummy_var = 0;
    dummy_var ^= ((int64_t) (void*) free_WireSyncReturn);
    dummy_var ^= ((int64_t) (void*) store_dart_post_cobject);
    dummy_var ^= ((int64_t) (void*) get_dart_object);
    dummy_var ^= ((int64_t) (void*) drop_dart_object);
    dummy_var ^= ((int64_t) (void*) new_dart_opaque);
    return dummy_var;
}