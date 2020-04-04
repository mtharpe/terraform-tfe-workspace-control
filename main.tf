provider "tfe" {
  token = var.tfe_api_key
}

# Demos
resource "tfe_workspace" "gcp_terraform_demo_setup" {
  name         = "gcp-terraform-demo"
  organization = var.org_name
}

resource "tfe_workspace" "aws_terraform_demo_setup" {
  name         = "aws-terraform-demo"
  organization = var.org_name
}

resource "tfe_workspace" "azure_terraform_demo_setup" {
  name         = "azure-terraform-demo"
  organization = var.org_name
}

## Consul
resource "tfe_workspace" "aws_consul_demo_setup" {
  name         = "aws-consul-demo"
  organization = var.org_name
}