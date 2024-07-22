resource "tfe_project" "admin" {
  organization = var.tfe_org_name
  name         = "Admin Project"
  description  = "Administration Project for Terraform Workspaces"
}

resource "tfe_project" "vcs" {
  organization = var.tfe_org_name
  name         = "VCS"
  description  = "VCS Project for Terraform Workspaces"
}

resource "tfe_project" "aws" {
  organization = var.tfe_org_name
  name         = "AWS"
  description  = "AWS Related Terraform Workspaces"
}

# resource "tfe_project" "gcp" {
#   organization = var.tfe_org_name
#   name         = "GCP"
#   description  = "GCP Related Terraform Workspaces"
# }

# resource "tfe_project" "azure" {
#   organization = var.tfe_org_name
#   name         = "Azure"
#   description  = "Azure Related Terraform Workspaces"
# }