# GCP Demo Dev Branch

resource "tfe_workspace" "gcp_terraform_demo_setup_dev" {
  name           = "gcp-terraform-demo-dev"
  organization   = var.org_name
  queue_all_runs = false
  vcs_repo {
    identifier     = "mtharpe/terraform-gcp-demo"
    branch         = "dev"
    oauth_token_id = var.oauth_token_id
  }
}

resource "tfe_variable" "gcp_credentials_dev" {
  key          = "google_credentials"
  value        = var.google_credentials
  category     = "terraform"
  workspace_id = tfe_workspace.gcp_terraform_demo_setup_dev.id
  description  = "Google Cloud Credentials"
  sensitive    = true
}

resource "tfe_variable" "gcp_region_dev" {
  key          = "google_region"
  value        = var.google_region
  category     = "terraform"
  workspace_id = tfe_workspace.gcp_terraform_demo_setup_dev.id
  description  = "Google Cloud Region"
  sensitive    = false
}

resource "tfe_variable" "gcp_project_dev" {
  key          = "google_project"
  value        = var.google_project
  category     = "terraform"
  workspace_id = tfe_workspace.gcp_terraform_demo_setup_dev.id
  description  = "Google Cloud Project"
  sensitive    = false
}

resource "tfe_variable" "gcp_instance_username_dev" {
  key          = "gcp_instance_username"
  value        = var.instance_username
  category     = "terraform"
  workspace_id = tfe_workspace.gcp_terraform_demo_setup_dev.id
  description  = "Instance Username"
}

resource "tfe_variable" "gcp_instance_password_dev" {
  key          = "gcp_instance_password"
  value        = var.instance_password
  category     = "terraform"
  workspace_id = tfe_workspace.gcp_terraform_demo_setup_dev.id
  description  = "Instance Password"
  sensitive    = true
}
