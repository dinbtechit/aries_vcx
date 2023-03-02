use libvcx_core::api_vcx::api_global::settings;

pub fn enable_mocks() -> anyhow::Result<()> {
    settings::enable_mocks().map_err(anyhow::Error::from)?;
    Ok(())
}
