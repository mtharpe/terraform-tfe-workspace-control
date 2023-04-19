# GCP Demo

resource "tfe_workspace" "gcp_terraform_demo_setup" {
  count          = var.create_gcp ? 1 : 0
  name           = "gcp-terraform-demo"
  organization   = var.org_name
  queue_all_runs = false
  tag_names      = ["demo"]
  vcs_repo {
    identifier     = "mtharpe/terraform-gcp-demo"
    branch         = "master"
    oauth_token_id = var.oauth_token_id
  }
}

resource "tfe_variable" "gcp_instance_username" {
  count        = var.create_gcp ? 1 : 0
  key          = "gcp_instance_username"
  value        = var.instance_username
  category     = "terraform"
  workspace_id = tfe_workspace.gcp_terraform_demo_setup[count.index].id
  description  = "Instance Username"
}

resource "tfe_variable" "gcp_instance_password" {
  count        = var.create_gcp ? 1 : 0
  key          = "gcp_instance_password"
  value        = var.instance_password
  category     = "terraform"
  workspace_id = tfe_workspace.gcp_terraform_demo_setup[count.index].id
  description  = "Instance Password"
  sensitive    = true
}
