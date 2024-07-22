terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = ">= 0.26.0"
    }
  }
}

provider "tfe" {
  token = var.tfe_api_key
}

