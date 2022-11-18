module "dynamic_creds" {
	source = "./modules"

	project_id = var.project_id
	database_name = "postgres"
	database_server_address = "172.21.12.76"
	database_server_port = "5433"
}