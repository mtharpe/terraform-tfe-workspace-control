resource "tfe_sentinel_policy" "base_policy" {
  name         = "base_policy"
  description  = "This policy always passes"
  organization = var.org_name
  policy       = "main = rule { true }"
  enforce_mode = "hard-mandatory"
}

resource "tfe_policy_set" "base_policy_set" {
  name          = "base_policy_set"
  description   = "This policy set holds base policy"
  organization  = var.org_name
  policy_ids    = ["${tfe_sentinel_policy.base_policy.id}"]
  workspace_ids = ["${tfe_workspace.aws_terraform_demo_setup.id}", "${tfe_workspace.azure_terraform_demo_setup.id}", "${tfe_workspace.gcp_terraform_demo_setup.id}", ]
}
