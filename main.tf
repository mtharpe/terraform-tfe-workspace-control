provider "tfe" {
  token = var.tfe_api_key
}

# Dev
resource "tfe_workspace" "dev_gcp_demo_setup" {
  name         = "dev-gcp-demo"
  organization = var.org_name
}

resource "tfe_workspace" "dev_aws_demo_setup" {
  name         = "dev-aws-demo"
  organization = var.org_name
}

resource "tfe_workspace" "dev_azure_demo_setup" {
  name         = "dev-azure-demo"
  organization = var.org_name
}

# QA
resource "tfe_workspace" "qa_gcp_demo_setup" {
  name         = "qa-gcp-demo"
  organization = var.org_name
}

resource "tfe_workspace" "qa_aws_demo_setup" {
  name         = "qa-aws-demo"
  organization = var.org_name
}

resource "tfe_workspace" "qa_azure_demo_setup" {
  name         = "qa-azure-demo"
  organization = var.org_name
}

# Prod
resource "tfe_workspace" "prod_gcp_demo_setup" {
  name         = "prod-gcp-demo"
  organization = var.org_name
}

resource "tfe_workspace" "prod_aws_demo_setup" {
  name         = "prod-aws-demo"
  organization = var.org_name
}

resource "tfe_workspace" "prod_azure_demo_setup" {
  name         = "prod-azure-demo"
  organization = var.org_name
}

## Consul
resource "tfe_workspace" "aws_consul_demo_setup" {
  name         = "aws-consul-demo"
  organization = var.org_name
}