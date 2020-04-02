provider "tfe" {
  token    = var.test_rfc_tfc_api_key
}

# Disabled because of non-admin status
# resource "tfe_organization" "main_org_setup" {
#   name  = var.org_name
#   email = "${var.org_name}@hashicorp.com"
# }

resource "tfe_workspace" "aws-demo_setup" {
  name         = "basic-aws-demo"
  organization = var.org_name
}

resource "tfe_workspace" "azure-demo_setup" {
  name         = "basic-azure-demo"
  organization = var.org_name
}