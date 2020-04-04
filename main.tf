provider "tfe" {
  token = var.tfe_api_key
}

# Demos
resource "tfe_workspace" "aws_terraform_demo_setup" {
  name             = "aws-terraform-demo"
  organization     = var.org_name
  vcs_repo {
    identifier     = "mtharpe/terraform-aws-demo"
    branch         = "master"
    oauth_token_id = var.oauth_token_id
  }
}

resource "tfe_workspace" "azure_terraform_demo_setup" {
  name         = "azure-terraform-demo"
  organization = var.org_name
  vcs_repo {
    identifier     = "mtharpe/terraform-azure-demo"
    branch         = "master"
    oauth_token_id = var.oauth_token_id
  }
}

resource "tfe_workspace" "gcp_terraform_demo_setup" {
  name         = "gcp-terraform-demo"
  organization = var.org_name
  vcs_repo {
    identifier     = "mtharpe/terraform-gcp-demo"
    branch         = "master"
    oauth_token_id = var.oauth_token_id
  }
}

## Consul
resource "tfe_workspace" "aws_consul_demo_setup" {
  name         = "aws-consul-demo"
  organization = var.org_name
}