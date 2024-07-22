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