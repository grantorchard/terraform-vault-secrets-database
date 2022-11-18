output "credential_path" {
	value = replace(vault_database_secret_backend_role.readonly.id, "roles", "creds")
}
