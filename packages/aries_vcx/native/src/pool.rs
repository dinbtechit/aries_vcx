use libvcx_core::api_vcx::api_global::pool;
pub use libvcx_core::aries_vcx::indy::ledger::pool::PoolConfig;
use flutter_rust_bridge::frb;

#[frb(mirror(PoolConfig))]
#[derive(Debug, Clone)]
pub struct _PoolConfig {
    pub genesis_path: String,
    pub pool_name: Option<String>,
    pub pool_config: Option<String>,
}

// implement fn open_main_pool and close_main_pool using  layer functions, make sure the function
// is async if the respective  layer is async
#[tokio::main(flavor = "current_thread")]
pub async fn open_main_pool(pool_config: PoolConfig) -> anyhow::Result<()> {
    pool::open_main_pool(&pool_config).await.map_err(anyhow::Error::from)?;
    Ok(())
}

#[tokio::main(flavor = "current_thread")]
pub async fn close_main_pool() -> anyhow::Result<()> {
    pool::close_main_pool().await.map_err(anyhow::Error::from)
}
