use vcx::api_vcx::api_global::pool;
use vcx::aries_vcx::indy::ledger::pool::PoolConfig;
use vcx::errors::error::{LibvcxError, LibvcxErrorKind};
use vcx::serde_json;

// implement fn open_main_pool and close_main_pool using  layer functions, make sure the function
// is async if the respective  layer is async
#[tokio::main(flavor = "current_thread")]
pub async fn open_main_pool(pool_config: String) -> anyhow::Result<()> {
    let pool_config = serde_json::from_str::<PoolConfig>(&pool_config)
        .map_err(|err| LibvcxError::from_msg(LibvcxErrorKind::InvalidJson, format!("Serialization error: {:?}", err)))
        .map_err(anyhow::Error::from)?;
    pool::open_main_pool(&pool_config).await.map_err(anyhow::Error::from)?;
    Ok(())
}

#[tokio::main(flavor = "current_thread")]
pub async fn close_main_pool() -> anyhow::Result<()> {
    pool::close_main_pool().await.map_err(anyhow::Error::from)
}
