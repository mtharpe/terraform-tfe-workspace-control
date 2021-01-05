# Azure Demo Dev Branch

resource "tfe_workspace" "azure_terraform_demo_setup_dev" {
  name           = "azure-terraform-demo-dev"
  organization   = var.org_name
  queue_all_runs = false
  vcs_repo {
    identifier     = "mtharpe/terraform-azure-demo"
    branch         = "dev"
    oauth_token_id = var.oauth_token_id
  }
}

resource "tfe_variable" "azure_subscription_id_dev" {
  key          = "ARM_SUBSCRIPTION_ID"
  value        = var.azure_subscription_id
  category     = "env"
  workspace_id = tfe_workspace.azure_terraform_demo_setup_dev.id
  description  = "Azure Subscription ID"
}

resource "tfe_variable" "azure_client_id_dev" {
  key          = "ARM_CLIENT_ID"
  value        = var.azure_client_id
  category     = "env"
  workspace_id = tfe_workspace.azure_terraform_demo_setup_dev.id
  description  = "Azure Client ID"
}

resource "tfe_variable" "azure_tenant_id_dev" {
  key          = "ARM_TENANT_ID"
  value        = var.azure_tenant_id
  category     = "env"
  workspace_id = tfe_workspace.azure_terraform_demo_setup_dev.id
  description  = "Azure Tenant ID"
}

resource "tfe_variable" "azure_client_secret_dev" {
  key          = "ARM_CLIENT_SECRET"
  value        = var.azure_client_secret
  category     = "env"
  workspace_id = tfe_workspace.azure_terraform_demo_setup_dev.id
  description  = "Azure Client Secret"
  sensitive    = true
}

resource "tfe_variable" "azure_instance_username_dev" {
  key          = "azure_instance_username"
  value        = var.instance_username
  category     = "terraform"
  workspace_id = tfe_workspace.azure_terraform_demo_setup_dev.id
  description  = "Instance Username"
}

resource "tfe_variable" "azure_instance_password_dev" {
  key          = "azure_instance_password"
  value        = var.instance_password
  category     = "terraform"
  workspace_id = tfe_workspace.azure_terraform_demo_setup_dev.id
  description  = "Instance Password"
  sensitive    = true
}