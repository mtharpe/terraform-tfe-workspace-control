# Terraform Enterprise Variables
variable "tfe_api_key" {
  description = "Terraform Enterprise/Cloud API used to connect and configure workspaces"
}
variable "tfe_org_name" {
  description = "Terraform Enterprise/Cloud Organization name to create the workspaces in"
}
variable "tfe_oauth_token_id" {
  description = "Terraform Enterprise/Cloud VCS oauth token ID (found in settings/VCS)"
}

variable "tfe_vcs_username" {
  description = "VCS username that will prefix the URL for all VCS actions"
  default     = "mtharpe"
}

# AWS Variables
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

# SSH Keys
variable "public_key" {
  description = "Public key to connect to instances"
}

variable "private_key" {
  description = "Private key to connect to instances"
}

# GCP Variables
variable "google_credentials" {
  description = "Google Cloud Credentials"
}

variable "google_region" {
  description = "Google Cloud Region"
}

variable "google_project" {
  description = "Google Cloud Project"
}

# Azure Variables
variable "azure_subscription_id" {
  description = "Azure Subscription ID"
}

variable "azure_client_id" {
  description = "Azure Client ID"
}

variable "azure_tenant_id" {
  description = "Azure Tenant ID"
}

variable "azure_client_secret" {
  description = "Azure Clinet Secret"
}

# Instance Information (mainly Azure Windows instances)
variable "instance_username" {
  description = "Username to connect to instances"
}

variable "instance_password" {
  description = "Password to connect to instances"
}