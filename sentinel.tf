locals {
  workspace_azure_id = length(tfe_workspace.azure_terraform_demo_setup) > 0 ? { WorkspaceID = tfe_workspace.azure_terraform_demo_setup[0].id } : {}
  workspace_aws_id   = length(tfe_workspace.aws_terraform_demo_setup) > 0 ? { WorkspaceID = tfe_workspace.aws_terraform_demo_setup[0].id } : {}
  workspace_gcp_id   = length(tfe_workspace.gcp_terraform_demo_setup) > 0 ? { WorkspaceID = tfe_workspace.gcp_terraform_demo_setup[0].id } : {}
}

resource "tfe_policy_set" "demo_sentinel_policy_set" {
  name          = "demo-policy-set"
  description   = "A brand new policy set for demos"
  organization  = var.org_name
  workspace_ids = [{ for key, value in local.workspace_aws_id : key => value }, { for key, value in local.workspace_azure_id : key => value }, { for key, value in local.workspace_gcp_id : key => value }]

  vcs_repo {
    identifier         = "mtharpe/terraform-sentinel-common"
    branch             = "main"
    ingress_submodules = false
    oauth_token_id     = var.oauth_token_id
  }
}