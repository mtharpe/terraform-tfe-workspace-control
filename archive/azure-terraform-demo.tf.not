# Azure Demo

resource "tfe_workspace" "azure_terraform_demo_setup" {
  name           = "azure-terraform-demo"
  organization   = var.org_name
  queue_all_runs = false
  tag_names      = ["demo"]
  vcs_repo {
    identifier     = "mtharpe/terraform-azure-demo"
    branch         = "master"
    oauth_token_id = var.oauth_token_id
  }
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