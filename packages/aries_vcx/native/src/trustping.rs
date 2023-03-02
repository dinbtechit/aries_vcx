use libvcx_core::aries_vcx::messages::protocols::trust_ping::ping::Ping;
use libvcx_core::aries_vcx::protocols::trustping;
use libvcx_core::errors::error::{LibvcxError, LibvcxErrorKind};
use libvcx_core::serde_json;



pub fn trustping_build_response_msg(ping: String) -> anyhow::Result<String> {
    let ping = serde_json::from_str::<Ping>(&ping)
        .map_err(|err| {
            LibvcxError::from_msg(
                LibvcxErrorKind::InvalidJson,
                format!("Cannot deserialize Ping: {:?}", err),
            )
        })
        .map_err(anyhow::Error::from)?;
    Ok(serde_json::json!(trustping::build_ping_response_msg(&ping)).to_string())
}


pub fn trustping_build_ping(request_response: bool, comment: Option<String>) -> String {
    serde_json::json!(trustping::build_ping(request_response, comment)).to_string()
}
