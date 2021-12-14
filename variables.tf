# Terraform Enterprise Variables
variable "tfe_api_key" {
  description = "Terraform Enterprise/Cloud API used to connect and configure workspaces"
}
variable "org_name" {
  description = "Terraform Enterprise/Cloud Organization name to create the workspaces in"
}
variable "oauth_token_id" {
  description = "Terraform Enterprise/Cloud VCS oauth token ID (found in settings/VCS)"
}

variable "public_key" {
  description = "Public key to connect to instances"
}

variable "private_key" {
  description = "Private key to connect to instances"
}

variable "instance_username" {
  description = "Username to connect to instances"
}

variable "instance_password" {
  description = "Password to connect to instances"
}