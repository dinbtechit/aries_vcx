use flutter_rust_bridge::frb;
use libvcx_core::api_vcx::api_global::agency_client;
pub use libvcx_core::aries_vcx::agency_client::configuration::{AgencyClientConfig, AgentProvisionConfig};

#[frb(mirror(AgentProvisionConfig))]
#[derive(Default, Clone)]
pub struct _AgentProvisionConfig {
    pub agency_did: String,
    pub agency_verkey: String,
    pub agency_endpoint: String,
    pub agent_seed: Option<String>,
}

#[frb(mirror(AgencyClientConfig))]
#[derive(Default, Debug, Clone)]
pub struct _AgencyClientConfig {
    pub agency_did: String,
    pub agency_endpoint: String,
    pub agency_verkey: String,
    pub remote_to_sdk_did: String,
    pub remote_to_sdk_verkey: String,
    pub sdk_to_remote_did: String,
    pub sdk_to_remote_verkey: String,
}


#[tokio::main(flavor = "current_thread")]
pub async fn update_webhook_url(webhook_url: String) -> anyhow::Result<()> {
    agency_client::update_webhook_url(&webhook_url).await
        .map_err(anyhow::Error::from)
}

pub fn create_agency_client_for_main_wallet(config: AgencyClientConfig) -> anyhow::Result<()> {
    agency_client::create_agency_client_for_main_wallet(&config).map_err(anyhow::Error::from)?;
    Ok(())
}

#[tokio::main(flavor = "current_thread")]
pub async fn provision_cloud_agent(config: AgentProvisionConfig) -> anyhow::Result<AgencyClientConfig> {
    let agency_client_config = agency_client::provision_cloud_agent(&config)
        .await
        .map_err(anyhow::Error::from)?;
    Ok(agency_client_config)
}
