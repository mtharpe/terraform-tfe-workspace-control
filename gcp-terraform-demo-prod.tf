# GCP Demo Master Branch

resource "tfe_workspace" "gcp_terraform_demo_setup_prod" {
  name           = "gcp-terraform-demo-prod"
  organization   = var.org_name
  queue_all_runs = false
  vcs_repo {
    identifier     = "mtharpe/terraform-gcp-demo"
    branch         = "master"
    oauth_token_id = var.oauth_token_id
  }
}

resource "tfe_variable" "gcp_credentials_prod" {
  key          = "google_credentials"
  value        = var.google_credentials
  category     = "terraform"
  workspace_id = tfe_workspace.gcp_terraform_demo_setup_prod.id
  description  = "Google Cloud Credentials"
  sensitive    = true
}

resource "tfe_variable" "gcp_region_prod" {
  key          = "google_region"
  value        = var.google_region
  category     = "terraform"
  workspace_id = tfe_workspace.gcp_terraform_demo_setup_prod.id
  description  = "Google Cloud Region"
  sensitive    = false
}

resource "tfe_variable" "gcp_project_prod" {
  key          = "google_project"
  value        = var.google_project
  category     = "terraform"
  workspace_id = tfe_workspace.gcp_terraform_demo_setup_prod.id
  description  = "Google Cloud Project"
  sensitive    = false
}

resource "tfe_variable" "gcp_instance_username_prod" {
  key          = "gcp_instance_username"
  value        = var.instance_username
  category     = "terraform"
  workspace_id = tfe_workspace.gcp_terraform_demo_setup_prod.id
  description  = "Instance Username"
}

resource "tfe_variable" "gcp_instance_password_prod" {
  key          = "gcp_instance_password"
  value        = var.instance_password
  category     = "terraform"
  workspace_id = tfe_workspace.gcp_terraform_demo_setup_prod.id
  description  = "Instance Password"
  sensitive    = true
}
