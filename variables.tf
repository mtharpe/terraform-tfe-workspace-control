# Terraform Enterprise Variables
variable "tfe_api_key" {
  description = "Terraform Enterprise/Cloud API used to connect and configure workspaces"
  type        = string
}
variable "tfe_project_id" {
  description = "Terraform Enterprise/Cloud Project ID"
  type        = string
}
variable "tfe_org_name" {
  description = "Terraform Enterprise/Cloud Organization name to create the workspaces in"
  type        = string
}
variable "github_app_installation_id" {
  description = "Terraform Enterprise/Cloud VCS oauth token ID (found in settings/VCS)"
  type        = string
}

# SSH Variables
variable "public_key" {
  description = "Public key to connect to instances"
  type        = string
}

variable "private_key" {
  description = "Private key to connect to instances"
  type        = string
}

# Windows Instance Account Info
variable "instance_username" {
  description = "Username to connect to instances"
  type        = string
}

variable "instance_password" {
  description = "Password to connect to instances"
  type        = string
}