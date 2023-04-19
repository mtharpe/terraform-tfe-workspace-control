# Terraform Variable Sets

resource "tfe_variable_set" "aws" {
  name         = "AWS Access"
  description  = "All of the AWS Access Requirements"
  organization = var.org_name
}

resource "tfe_workspace_variable_set" "aws" {
  variable_set_id = tfe_variable_set.aws.id
  workspace_id    = tfe_workspace.aws_terraform_demo_setup[0].id
}

resource "tfe_variable_set" "azure" {
  name         = "Azure Access"
  description  = "All of the Azure Access Requirements"
  organization = var.org_name
}

resource "tfe_workspace_variable_set" "azure" {
  variable_set_id = tfe_variable_set.azure.id
  workspace_id    = tfe_workspace.azure_terraform_demo_setup[0].id
}

resource "tfe_variable_set" "gcp" {
  name         = "GCP Access"
  description  = "All of the GCP Access Requirements"
  organization = var.org_name
}

resource "tfe_workspace_variable_set" "gcp" {
  variable_set_id = tfe_variable_set.gcp.id
  workspace_id    = tfe_workspace.gcp_terraform_demo_setup[0].id
}