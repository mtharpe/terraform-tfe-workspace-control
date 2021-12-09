# Azure Demo

resource "tfe_workspace" "azure_terraform_demo_setup" {
  name           = "azure-terraform-demo"
  organization   = var.org_name
  queue_all_runs = false
  tag_names    = ["demo"]
  vcs_repo {
    identifier     = "mtharpe/terraform-azure-demo"
    branch         = "master"
    oauth_token_id = var.oauth_token_id
  }
}

resource "tfe_variable" "azure_subscription_id" {
  key          = "ARM_SUBSCRIPTION_ID"
  value        = var.azure_subscription_id
  category     = "env"
  workspace_id = tfe_workspace.azure_terraform_demo_setup.id
  description  = "Azure Subscription ID"
}

resource "tfe_variable" "azure_client_id" {
  key          = "ARM_CLIENT_ID"
  value        = var.azure_client_id
  category     = "env"
  workspace_id = tfe_workspace.azure_terraform_demo_setup.id
  description  = "Azure Client ID"
}

resource "tfe_variable" "azure_tenant_id" {
  key          = "ARM_TENANT_ID"
  value        = var.azure_tenant_id
  category     = "env"
  workspace_id = tfe_workspace.azure_terraform_demo_setup.id
  description  = "Azure Tenant ID"
}

resource "tfe_variable" "azure_client_secret" {
  key          = "ARM_CLIENT_SECRET"
  value        = var.azure_client_secret
  category     = "env"
  workspace_id = tfe_workspace.azure_terraform_demo_setup.id
  description  = "Azure Client Secret"
  sensitive    = true
}

resource "tfe_variable" "azure_instance_username" {
  key          = "azure_instance_username"
  value        = var.instance_username
  category     = "terraform"
  workspace_id = tfe_workspace.azure_terraform_demo_setup.id
  description  = "Instance Username"
}

resource "tfe_variable" "azure_instance_password" {
  key          = "azure_instance_password"
  value        = var.instance_password
  category     = "terraform"
  workspace_id = tfe_workspace.azure_terraform_demo_setup.id
  description  = "Instance Password"
  sensitive    = true
}