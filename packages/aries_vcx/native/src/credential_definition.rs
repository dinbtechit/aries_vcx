use libvcx_core::api_vcx::api_handle::credential_def;

#[tokio::main(flavor = "current_thread")]
pub async fn credentialdef_create_v2_(
    source_id: String,
    schema_id: String,
    tag: String,
    support_revocation: bool,
) -> anyhow::Result<u32> {
    credential_def::create(source_id, schema_id, tag, support_revocation)
        .await
        .map_err(anyhow::Error::from)
}

#[tokio::main(flavor = "current_thread")]
pub async fn credentialdef_publish(handle: u32) -> anyhow::Result<()> {
    credential_def::publish(handle).await.map_err(anyhow::Error::from)
}


pub fn credentialdef_deserialize(serialized: String) -> anyhow::Result<u32> {
    credential_def::from_string(&serialized).map_err(anyhow::Error::from)
}

pub fn credentialdef_release(handle: u32) -> anyhow::Result<()> {
    credential_def::release(handle).map_err(anyhow::Error::from)
}

pub fn credentialdef_serialize(handle: u32) -> anyhow::Result<String> {
    credential_def::to_string(handle).map_err(anyhow::Error::from)
}

pub fn credentialdef_get_cred_def_id(handle: u32) -> anyhow::Result<String> {
    credential_def::get_cred_def_id(handle).map_err(anyhow::Error::from)
}

#[tokio::main(flavor = "current_thread")]
pub async fn credentialdef_update_state(handle: u32) -> anyhow::Result<u32> {
    credential_def::update_state(handle).await.map_err(anyhow::Error::from)
}

pub fn credentialdef_get_state(handle: u32) -> anyhow::Result<u32> {
    credential_def::get_state(handle).map_err(anyhow::Error::from)
}
