variable "tfe_api_key" {
  description = "Terraform Enterprise/Cloud API used to connect and configure workspaces"
}
variable "org_name" {
  description = "Terraform Enterprise/Cloud Organization name to create the workspaces in"
}
variable "oauth_token_id" {
  description = "Terraform Enterprise/Cloud VCS oauth token ID (found in settings/VCS)"
}

variable "aws_access_key_id" {
  description = "AWS Access key"
}

variable "aws_secret_access_key" {
  description = "AWS Secret Access key"
}

variable "aws_region" {
  description = "AWS Region"
  default     = "us-east-2"
}