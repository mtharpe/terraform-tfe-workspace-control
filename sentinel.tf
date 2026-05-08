locals {
  sentinel_policies_path = "${path.module}/../terraform-sentinel-policies"
}

data "tfe_slug" "aws" {
  source_path = "${local.sentinel_policies_path}/aws"
}

data "tfe_slug" "vcs" {
  source_path = "${local.sentinel_policies_path}/vcs"
}

data "tfe_slug" "admin" {
  source_path = "${local.sentinel_policies_path}/admin"
}

resource "tfe_policy_set" "aws" {
  name         = "aws"
  description  = "Sentinel policies applied to AWS project workspaces (cloud infra + cost guardrails)."
  organization = var.tfe_org_name
  kind         = "sentinel"
  slug         = data.tfe_slug.aws
}

resource "tfe_project_policy_set" "aws" {
  project_id    = tfe_project.aws.id
  policy_set_id = tfe_policy_set.aws.id
}

resource "tfe_policy_set" "vcs" {
  name         = "vcs"
  description  = "Sentinel policies applied to VCS project workspaces (GitHub/GitLab/TFE repo management)."
  organization = var.tfe_org_name
  kind         = "sentinel"
  slug         = data.tfe_slug.vcs
}

resource "tfe_project_policy_set" "vcs" {
  project_id    = tfe_project.vcs.id
  policy_set_id = tfe_policy_set.vcs.id
}

resource "tfe_policy_set" "admin" {
  name         = "admin"
  description  = "Sentinel policies applied to Admin project workspaces (TFE control plane)."
  organization = var.tfe_org_name
  kind         = "sentinel"
  slug         = data.tfe_slug.admin
}

resource "tfe_project_policy_set" "admin" {
  project_id    = tfe_project.admin.id
  policy_set_id = tfe_policy_set.admin.id
}
