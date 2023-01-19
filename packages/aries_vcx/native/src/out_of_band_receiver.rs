use vcx::api_vcx::api_handle::out_of_band;


fn out_of_band_receiver_create(msg: String) -> anyhow::Result<u32> {
    out_of_band::create_out_of_band_msg_from_msg(&msg).map_err(anyhow::Error::from)
}


fn out_of_band_receiver_extract_message(handle: u32) -> anyhow::Result<String> {
    out_of_band::extract_a2a_message(handle).map_err(anyhow::Error::from)
}

#[tokio::main(flavor = "current_thread")]
pub async fn out_of_band_receiver_connection_exists(handle: u32, conn_handles: Vec<u32>) -> anyhow::Result<u32> {
    out_of_band::connection_exists(handle, &conn_handles)
        .await
        .map(|res| res.0)
        .map_err(anyhow::Error::from)
}

#[tokio::main(flavor = "current_thread")]
pub async fn out_of_band_receiver_build_connection(handle: u32) -> anyhow::Result<String> {
    out_of_band::build_connection(handle).await.map_err(anyhow::Error::from)
}


pub fn out_of_band_receiver_get_thread_id(handle: u32) -> anyhow::Result<String> {
    out_of_band::get_thread_id_receiver(handle).map_err(anyhow::Error::from)
}


pub fn out_of_band_receiver_serialize(handle: u32) -> anyhow::Result<String> {
    out_of_band::to_string_receiver(handle).map_err(anyhow::Error::from)
}


pub fn out_of_band_receiver_deserialize(oob_data: String) -> anyhow::Result<u32> {
    out_of_band::from_string_receiver(&oob_data).map_err(anyhow::Error::from)
}


pub fn out_of_band_receiver_release(handle: u32) -> anyhow::Result<()> {
    out_of_band::release_receiver(handle).map_err(anyhow::Error::from)
}
