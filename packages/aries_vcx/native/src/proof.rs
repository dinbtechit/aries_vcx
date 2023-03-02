use libvcx_core::api_vcx::api_handle::proof;

#[tokio::main(flavor = "current_thread")]
pub async fn proof_create(
    source_id: String,
    requested_attrs: String,
    requested_predicates: String,
    revocation_details: String,
    name: String,
) -> anyhow::Result<u32> {
    proof::create_proof(
        source_id,
        requested_attrs,
        requested_predicates,
        revocation_details,
        name,
    )
        .await
        .map_err(anyhow::Error::from)
}


pub fn proof_get_proof_msg(handle: u32) -> anyhow::Result<String> {
    proof::get_presentation_msg(handle).map_err(anyhow::Error::from)
}


pub fn proof_release(handle: u32) -> anyhow::Result<()> {
    proof::release(handle).map_err(anyhow::Error::from)
}

#[tokio::main(flavor = "current_thread")]
pub async fn proof_send_request(handle_proof: u32, handle_connection: u32) -> anyhow::Result<()> {
    proof::send_proof_request(handle_proof, handle_connection)
        .await
        .map_err(anyhow::Error::from)
}


pub fn proof_get_request_msg(handle: u32) -> anyhow::Result<String> {
    proof::get_presentation_request_msg(handle).map_err(anyhow::Error::from)
}


pub fn proof_serialize(handle: u32) -> anyhow::Result<String> {
    proof::to_string(handle).map_err(anyhow::Error::from)
}


pub fn proof_deserialize(data: String) -> anyhow::Result<u32> {
    proof::from_string(&data).map_err(anyhow::Error::from)
}

// todo: fix argument order
#[tokio::main(flavor = "current_thread")]
pub async fn v2_proof_update_state(handle_proof: u32, connection_handle: u32) -> anyhow::Result<u32> {
    proof::update_state(handle_proof, None, connection_handle)
        .await
        .map_err(anyhow::Error::from)
}

#[tokio::main(flavor = "current_thread")]
pub async fn v2_proof_update_state_with_message(
    handle_proof: u32,
    message: String,
    connection_handle: u32,
) -> anyhow::Result<u32> {
    proof::update_state(handle_proof, Some(&message), connection_handle)
        .await
        .map_err(anyhow::Error::from)
}


pub fn proof_get_state(handle: u32) -> anyhow::Result<u32> {
    proof::get_state(handle).map_err(anyhow::Error::from)
}


pub fn proof_get_proof_state(handle: u32) -> anyhow::Result<u32> {
    proof::get_proof_state(handle).map_err(anyhow::Error::from)
}


pub fn proof_get_thread_id(handle: u32) -> anyhow::Result<String> {
    proof::get_thread_id(handle).map_err(anyhow::Error::from)
}


pub fn mark_presentation_request_msg_sent(handle: u32) -> anyhow::Result<()> {
    proof::mark_presentation_request_msg_sent(handle).map_err(anyhow::Error::from)
}
