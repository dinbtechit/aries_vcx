use vcx::api_vcx::api_handle::schema;

pub fn schema_get_attributes(_source_id: String, _schema_id: String) -> anyhow::Result<()> {
    unimplemented!("Not implemented in napi wrapper yet")
}


pub fn schema_prepare_for_endorser() -> anyhow::Result<()> {
    unimplemented!("Not implemented in napi wrapper yet")
}

#[tokio::main(flavor = "current_thread")]
pub async fn schema_create(source_id: String, name: String, version: String, data: String) -> anyhow::Result<u32> {
    schema::create_and_publish_schema(&source_id, name, version, data)
        .await
        .map_err(anyhow::Error::from)
}


pub fn schema_get_schema_id(handle_schema: u32) -> anyhow::Result<String> {
    schema::get_schema_id(handle_schema).map_err(anyhow::Error::from)
}


pub fn schema_deserialize(serialized: String) -> anyhow::Result<u32> {
    schema::from_string(&serialized).map_err(anyhow::Error::from)
}


pub fn schema_serialize(handle_schema: u32) -> anyhow::Result<String> {
    schema::to_string(handle_schema).map_err(anyhow::Error::from)
}


pub fn schema_release(handle_schema: u32) -> anyhow::Result<()> {
    schema::release(handle_schema).map_err(anyhow::Error::from)
}

#[tokio::main(flavor = "current_thread")]
pub async fn schema_update_state(handle_schema: u32) -> anyhow::Result<u32> {
    schema::update_state(handle_schema).await.map_err(anyhow::Error::from)
}


pub fn schema_get_state(handle_schema: u32) -> anyhow::Result<u32> {
    schema::get_state(handle_schema).map_err(anyhow::Error::from)
}
