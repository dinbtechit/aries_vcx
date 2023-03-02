use libvcx_core::api_vcx::api_handle::mediated_connection;

pub fn generate_public_invitation(public_did: String, label: String) -> anyhow::Result<String> {
    mediated_connection::generate_public_invitation(&public_did, &label).map_err(anyhow::Error::from)
}
