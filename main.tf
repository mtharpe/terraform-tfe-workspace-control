provider "tfe" {
  token = var.tfe_api_key
}

resource "tfe_workspace" "aws_demo_setup" {
  name         = "aws-demo"
  organization = var.org_name
}

resource "tfe_workspace" "azure_demo_setup" {
  name         = "azure-demo"
  organization = var.org_name
}