# GCP Demo

resource "tfe_workspace" "gcp_terraform_demo_setup" {
  name           = "gcp-terraform-demo"
  organization   = var.org_name
  queue_all_runs = false
  vcs_repo {
    identifier     = "mtharpe/terraform-gcp-demo"
    branch         = "master"
    oauth_token_id = var.oauth_token_id
  }
}

resource "tfe_variable" "gcp_credentials" {
  key          = "google_credentials"
  value        = var.google_credentials
  category     = "terraform"
  workspace_id = tfe_workspace.gcp_terraform_demo_setup.id
  description  = "Google Cloud Credentials"
  sensitive    = true
}