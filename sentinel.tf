locals {
  sentinel_repo        = "mtharpe/terraform-sentinel-policies"
  sentinel_repo_branch = "main"
}

resource "tfe_policy_set" "aws" {
  name          = "aws"
  description   = "Sentinel policies applied to AWS project workspaces (cloud infra + cost guardrails)."
  organization  = var.tfe_org_name
  kind          = "sentinel"
  policies_path = "aws"

  vcs_repo {
    identifier                 = local.sentinel_repo
    branch                     = local.sentinel_repo_branch
    ingress_submodules         = false
    github_app_installation_id = var.github_app_installation_id
  }
}

resource "tfe_project_policy_set" "aws" {
  project_id    = tfe_project.aws.id
  policy_set_id = tfe_policy_set.aws.id
}

resource "tfe_policy_set" "vcs" {
  name          = "vcs"
  description   = "Sentinel policies applied to VCS project workspaces (GitHub/GitLab/TFE repo management)."
  organization  = var.tfe_org_name
  kind          = "sentinel"
  policies_path = "vcs"

  vcs_repo {
    identifier                 = local.sentinel_repo
    branch                     = local.sentinel_repo_branch
    ingress_submodules         = false
    github_app_installation_id = var.github_app_installation_id
  }
}

resource "tfe_project_policy_set" "vcs" {
  project_id    = tfe_project.vcs.id
  policy_set_id = tfe_policy_set.vcs.id
}

resource "tfe_policy_set" "admin" {
  name          = "admin"
  description   = "Sentinel policies applied to Admin project workspaces (TFE control plane)."
  organization  = var.tfe_org_name
  kind          = "sentinel"
  policies_path = "admin"

  vcs_repo {
    identifier                 = local.sentinel_repo
    branch                     = local.sentinel_repo_branch
    ingress_submodules         = false
    github_app_installation_id = var.github_app_installation_id
  }
}

resource "tfe_project_policy_set" "admin" {
  project_id    = tfe_project.admin.id
  policy_set_id = tfe_policy_set.admin.id
}
