resource "tfe_project" "aws" {
  organization = var.tfe_org_name
  name         = "AWS"
}

resource "tfe_project" "gcp" {
  organization = var.tfe_org_name
  name         = "GCP"
}

resource "tfe_project" "azure" {
  organization = var.tfe_org_name
  name         = "azure"
}