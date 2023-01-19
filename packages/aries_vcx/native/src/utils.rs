
use vcx::api_vcx::api_global::state::state_vcx_shutdown;
use vcx::api_vcx::api_global::VERSION_STRING;


pub fn shutdown(delete_all: Option<bool>) -> anyhow::Result<()> {
    state_vcx_shutdown(delete_all.unwrap_or(false));
    Ok(())
}


pub fn get_version() -> anyhow::Result<String> {
    Ok(VERSION_STRING.clone())
}
