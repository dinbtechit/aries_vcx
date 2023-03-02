use libvcx_core::aries_vcx::utils::test_logger::LibvcxDefaultLogger;

pub fn init_default_logger(pattern: Option<String>) -> anyhow::Result<()> {
    LibvcxDefaultLogger::init(pattern).map_err(anyhow::Error::from)
}
