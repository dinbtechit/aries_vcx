use libvcx_core::api_vcx::api_handle::connection;
use libvcx_core::aries_vcx::messages::protocols::basic_message::message::BasicMessage;
pub use libvcx_core::aries_vcx::protocols::connection::pairwise_info::PairwiseInfo;
use libvcx_core::serde_json;
use flutter_rust_bridge::frb;

#[frb(mirror(PairwiseInfo))]
#[derive(Debug, Clone)]
pub struct _PairwiseInfo {
    pub pw_did: String,
    pub pw_vk: String,
}

#[tokio::main(flavor = "current_thread")]
pub async fn connection_create_inviter(pw_info: Option<PairwiseInfo>) -> anyhow::Result<u32> {
    //trace!("connection_create_inviter >>>");
    connection::create_inviter(pw_info).await.map_err(anyhow::Error::from)
}

#[tokio::main(flavor = "current_thread")]
pub async fn connection_create_invitee(invitation: String) -> anyhow::Result<u32> {
    //trace!("connection_create_invitee >>> invitation: {:?}", invitation);
    connection::create_invitee(&invitation).await.map_err(anyhow::Error::from)
}


pub fn connection_get_thread_id(handle: u32) -> anyhow::Result<String> {
    //trace!("connection_get_thread_id >>> handle: {:?}", handle);
    connection::get_thread_id(handle).map_err(anyhow::Error::from)
}


pub fn connection_get_pairwise_info(handle: u32) -> anyhow::Result<String> {
    //trace!("connection_get_pairwise_info >>> handle: {:?}", handle);
    connection::get_pairwise_info(handle).map_err(anyhow::Error::from)
}


pub fn connection_get_remote_did(handle: u32) -> anyhow::Result<String> {
    //trace!("connection_get_remote_did >>> handle: {:?}", handle);
    connection::get_remote_did(handle).map_err(anyhow::Error::from)
}


pub fn connection_get_remote_vk(handle: u32) -> anyhow::Result<String> {
    //trace!("connection_get_remote_vk >>> handle: {:?}", handle);
    connection::get_remote_vk(handle).map_err(anyhow::Error::from)
}


pub fn connection_get_state(handle: u32) -> anyhow::Result<u32> {
    //trace!("connection_get_state >>> handle: {:?}", handle);
    connection::get_state(handle).map_err(anyhow::Error::from)
}


pub fn connection_get_invitation(handle: u32) -> anyhow::Result<String> {
    //trace!("connection_get_invitation >>> handle: {:?}", handle);
    connection::get_invitation(handle).map_err(anyhow::Error::from)
}

#[tokio::main(flavor = "current_thread")]
pub async fn connection_process_invite(handle: u32, invitation: String) -> anyhow::Result<()> {
    //trace!("connection_process_invite >>> handle: {:?}", handle);
    connection::process_invite(handle, &invitation)
        .await
        .map_err(anyhow::Error::from)
}

#[tokio::main(flavor = "current_thread")]
pub async fn connection_process_request(
    handle: u32,
    request: String,
    service_endpoint: String,
    routing_keys: Vec<String>,
) -> anyhow::Result<()> {
    //trace!("connection_process_request >>> handle: {:?}", handle);
    connection::process_request(handle, &request, service_endpoint, routing_keys)
        .await
        .map_err(anyhow::Error::from)
}

#[tokio::main(flavor = "current_thread")]
pub async fn connection_process_response(handle: u32, response: String) -> anyhow::Result<()> {
    //trace!("connection_process_response >>> handle: {:?}", handle);
    connection::process_response(handle, &response)
        .await
        .map_err(anyhow::Error::from)
}

#[tokio::main(flavor = "current_thread")]
pub async fn connection_process_ack(handle: u32, message: String) -> anyhow::Result<()> {
    //trace!("connection_process_ack >>> handle: {:?}", handle);
    connection::process_ack(handle, &message).await.map_err(anyhow::Error::from)
}


pub fn connection_process_problem_report(handle: u32, problem_report: String) -> anyhow::Result<()> {
    //trace!("connection_process_problem_report >>> handle: {:?}", handle);
    connection::process_problem_report(handle, &problem_report).map_err(anyhow::Error::from)
}

#[tokio::main(flavor = "current_thread")]
pub async fn connection_send_response(handle: u32) -> anyhow::Result<()> {
    //trace!("connection_send_response >>> handle: {:?}", handle);
    connection::send_response(handle).await.map_err(anyhow::Error::from)
}

#[tokio::main(flavor = "current_thread")]
pub async fn connection_send_request(
    handle: u32,
    service_endpoint: String,
    routing_keys: Vec<String>,
) -> anyhow::Result<()> {
    //trace!("connection_send_request >>> handle: {:?}", handle);
    connection::send_request(handle, service_endpoint, routing_keys)
        .await
        .map_err(anyhow::Error::from)
}

#[tokio::main(flavor = "current_thread")]
pub async fn connection_send_ack(handle: u32) -> anyhow::Result<()> {
    //trace!("connection_send_ack >>> handle: {:?}", handle);
    connection::send_ack(handle).await.map_err(anyhow::Error::from)
}

#[tokio::main(flavor = "current_thread")]
pub async fn connection_send_generic_message(handle: u32, content: String) -> anyhow::Result<()> {
    //trace!("connection_send_generic_message >>> handle: {:?}", handle);
    let message = BasicMessage::create()
        .set_content(content)
        .set_time()
        .set_out_time()
        .to_a2a_message();

    let basic_message = serde_json::to_string(&message)
        .map_err(anyhow::Error::from)?;
    connection::send_generic_message(handle, basic_message)
        .await
        .map_err(anyhow::Error::from)
}

#[tokio::main(flavor = "current_thread")]
pub async fn connection_send_aries_message(handle: u32, content: String) -> anyhow::Result<()> {
    //trace!("connection_send_generic_message >>> handle: {:?}", handle);
    connection::send_generic_message(handle, content)
        .await
        .map_err(anyhow::Error::from)
}

#[tokio::main(flavor = "current_thread")]
pub async fn connection_create_invite(
    handle: u32,
    service_endpoint: String,
    routing_keys: Vec<String>,
) -> anyhow::Result<()> {
    //trace!("connection_create_invite >>> handle: {:?}", handle);
    connection::create_invite(handle, service_endpoint, routing_keys)
        .await
        .map_err(anyhow::Error::from)
}


pub fn connection_serialize(handle: u32) -> anyhow::Result<String> {
    //trace!("connection_serialize >>> handle: {:?}", handle);
    connection::to_string(handle).map_err(anyhow::Error::from)
}


pub fn connection_deserialize(connection_data: String) -> anyhow::Result<u32> {
    //trace!("connection_deserialize >>>");
    connection::from_string(&connection_data).map_err(anyhow::Error::from)
}


pub fn connection_release(handle: u32) -> anyhow::Result<()> {
    //trace!("connection_release >>> handle: {:?}", handle);
    connection::release(handle).map_err(anyhow::Error::from)
}
