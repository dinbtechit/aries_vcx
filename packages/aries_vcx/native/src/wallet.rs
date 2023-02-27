use vcx::api_vcx::api_global::settings::settings_init_issuer_config;
use vcx::api_vcx::api_global::{ledger, wallet};
pub use vcx::aries_vcx::indy::wallet::{IssuerConfig, RestoreWalletConfigs, WalletConfig};
pub use vcx::aries_vcx::protocols::connection::pairwise_info::PairwiseInfo;



use flutter_rust_bridge::frb;

#[frb(mirror(WalletConfig))]
#[derive(Clone, Debug, Default)]
pub struct _WalletConfig {
    pub wallet_name: String,
    pub wallet_key: String,
    pub wallet_key_derivation: String,
    pub wallet_type: Option<String>,
    pub storage_config: Option<String>,
    pub storage_credentials: Option<String>,
    pub rekey: Option<String>,
    pub rekey_derivation_method: Option<String>,
}

#[frb(mirror(IssuerConfig))]
pub struct _IssuerConfig {
    pub institution_did: String,
}

#[frb(mirror(RestoreWalletConfigs))]
#[derive(Clone, Debug)]
pub struct _RestoreWalletConfigs {
    pub wallet_name: String,
    pub wallet_key: String,
    pub exported_wallet_path: String,
    pub backup_key: String,
    pub wallet_key_derivation: Option<String>,
}

#[frb(mirror(PairwiseInfo))]
pub struct _PairwiseInfo {
    pub pw_did: String,
    pub pw_vk: String,
}


#[tokio::main(flavor = "current_thread")]
pub async fn wallet_open_as_main(wallet_config: WalletConfig) -> anyhow::Result<i32> {
    let handle = wallet::open_as_main_wallet(&wallet_config).await.map_err(anyhow::Error::from)?;
    Ok(handle.0)
}

#[tokio::main(flavor = "current_thread")]
pub async fn wallet_create_main(wallet_config: WalletConfig) -> anyhow::Result<()> {
    wallet::create_main_wallet(&wallet_config).await.map_err(anyhow::Error::from)
}

#[tokio::main(flavor = "current_thread")]
pub async fn wallet_close_main() -> anyhow::Result<()> {
    wallet::close_main_wallet().await.map_err(anyhow::Error::from)
}

#[tokio::main(flavor = "current_thread")]
pub async fn vcx_init_issuer_config(config: IssuerConfig) -> anyhow::Result<()> {
    settings_init_issuer_config(&config).map_err(anyhow::Error::from)
}

#[tokio::main(flavor = "current_thread")]
pub async fn configure_issuer_wallet(enterprise_seed: String) -> anyhow::Result<IssuerConfig> {
    let res = wallet::wallet_configure_issuer(&enterprise_seed)
        .await
        .map_err(anyhow::Error::from)?;
    Ok(res)
}

#[tokio::main(flavor = "current_thread")]
pub async fn unpack(data: Vec<u8>) -> anyhow::Result<String> {
    wallet::wallet_unpack_message_to_string(&data)
        .await
        .map_err(anyhow::Error::from)
}

#[tokio::main(flavor = "current_thread")]
pub async fn create_pairwise_info() -> anyhow::Result<PairwiseInfo> {
    let res = wallet::wallet_create_pairwise_did().await.map_err(anyhow::Error::from)?;
    Ok(res)
}

#[tokio::main(flavor = "current_thread")]
pub async fn wallet_import(config: RestoreWalletConfigs) -> anyhow::Result<()> {
    wallet::wallet_import(&config).await.map_err(anyhow::Error::from)
}

#[tokio::main(flavor = "current_thread")]
pub async fn wallet_export(path: String, backup_key: String) -> anyhow::Result<()> {
    wallet::export_main_wallet(&path, &backup_key)
        .await
        .map_err(anyhow::Error::from)
}

#[tokio::main(flavor = "current_thread")]
pub async fn get_verkey_from_wallet(did: String) -> anyhow::Result<String> {
    wallet::key_for_local_did(&did).await.map_err(anyhow::Error::from)
}

#[tokio::main(flavor = "current_thread")]
pub async fn rotate_verkey(did: String) -> anyhow::Result<()> {
    ledger::rotate_verkey(&did).await.map_err(anyhow::Error::from)
}

#[tokio::main(flavor = "current_thread")]
pub async fn rotate_verkey_start(did: String) -> anyhow::Result<String> {
    wallet::replace_did_keys_start(&did).await.map_err(anyhow::Error::from)
}

#[tokio::main(flavor = "current_thread")]
pub async fn rotate_verkey_apply(did: String, temp_vk: String) -> anyhow::Result<()> {
    wallet::rotate_verkey_apply(&did, &temp_vk).await.map_err(anyhow::Error::from)
}
