resource "tfe_policy_set" "demo_sentinel_policy_set" {
  name          = "demo-policy-set"
  description   = "A brand new policy set for demos"
  organization  = var.org_name
  workspace_ids = [try(tfe_workspace.aws_terraform_demo_setup[0].id, null), try(tfe_workspace.azure_terraform_demo_setup[0].id, null), try(tfe_workspace.gcp_terraform_demo_setup[0].id, null)]

  vcs_repo {
    identifier         = "mtharpe/terraform-sentinel-common"
    branch             = "main"
    ingress_submodules = false
    oauth_token_id     = var.oauth_token_id
  }
}