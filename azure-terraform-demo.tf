# Azure Demo

resource "tfe_workspace" "azure_terraform_demo_setup" {
  name           = "azure-terraform-demo"
  organization   = var.org_name
  queue_all_runs = false
  vcs_repo {
    identifier     = "mtharpe/terraform-azure-demo"
    branch         = "master"
    oauth_token_id = var.oauth_token_id
  }
}