variable "project_id" {
	type = string
	description = "The code for the project that the database is associated with."
}
variable "database_name" {
	type = string
	description = "The name of the database that you are going to manage users and roles for."
}
variable "database_username" {
	type = string
	description = "The username Vault will use to connect the database to perform user/role creation and deletion."
	default = "vault"
}
variable "database_password" {
	type = string
	description = "The initial password used to connect to the database. Will be rotated by Vault after a successful connection."
	default = "Hashi123!"
}
variable "database_server_address" {
	type = string
	description = "The IP address or DNS name of the database server or load balancer to access the database."
}
variable "database_server_port" {
	type = number
	description = "The port on which the database server or load balancer is listening."
	default = 5432
}
variable "ssl_mode" {
	type = string
	description = "Whether Vault should attempt to create a secure connection. Requires TLS on the database side."
	default = "enabled"
	validation {
    condition     = var.ssl_mode == "enabled" || var.ssl_mode == "disabled"
    error_message = "The ssl_mode value must be one of enabled OR disabled."
  }
}