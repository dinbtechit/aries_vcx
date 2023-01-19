pub use vcx::api_vcx::api_handle::revocation_registry::RevocationRegistryConfig;
use vcx::api_vcx::api_handle::revocation_registry;


use flutter_rust_bridge::frb;



#[frb(mirror(RevocationRegistryConfig))]
#[derive(Default, Debug, Clone)]
pub struct _RevocationRegistryConfig {
    pub issuer_did: String,
    pub cred_def_id: String,
    pub tag: u32,
    pub tails_dir: String,
    pub max_creds: u32,
}

#[tokio::main(flavor = "current_thread")]
pub async fn revocation_registry_create(config: RevocationRegistryConfig) -> anyhow::Result<u32> {
    revocation_registry::create(config).await.map_err(anyhow::Error::from)
}

#[tokio::main(flavor = "current_thread")]
pub async fn revocation_registry_publish(handle: u32, tails_url: String) -> anyhow::Result<u32> {
    revocation_registry::publish(handle, &tails_url)
        .await
        .map_err(anyhow::Error::from)
}

#[tokio::main(flavor = "current_thread")]
pub async fn revocation_registry_publish_revocations(handle: u32) -> anyhow::Result<()> {
    revocation_registry::publish_revocations(handle)
        .await
        .map_err(anyhow::Error::from)
}


pub fn revocation_registry_get_rev_reg_id(handle: u32) -> anyhow::Result<String> {
    revocation_registry::get_rev_reg_id(handle).map_err(anyhow::Error::from)
}


pub fn revocation_registry_get_tails_hash(handle: u32) -> anyhow::Result<String> {
    revocation_registry::get_tails_hash(handle).map_err(anyhow::Error::from)
}


pub fn revocation_registry_serialize(handle: u32) -> anyhow::Result<String> {
    revocation_registry::to_string(handle).map_err(anyhow::Error::from)
}


pub fn revocation_registry_deserialize(data: String) -> anyhow::Result<u32> {
    revocation_registry::from_string(&data).map_err(anyhow::Error::from)
}


pub fn revocation_registry_release(handle: u32) -> anyhow::Result<()> {
    revocation_registry::release(handle).map_err(anyhow::Error::from)
}
