terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = ">= 0.57.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "tfe" {
  token = var.tfe_api_key
}


data "tfe_project" "aws" {
  name         = tfe_project.aws.name
  organization = var.tfe_org_name
}

# data "tfe_project" "azure" {
#   name         = tfe_project.azure.name
#   organization = tfe.project.azure.organization
# }

# data "tfe_project" "gcp" {
#   name         = tfe_project.gcp.name
#   organization = tfe.project.gcp.organization
# }