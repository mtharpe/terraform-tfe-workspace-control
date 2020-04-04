# AWS Demo

resource "tfe_workspace" "aws_terraform_demo_setup" {
  name           = "aws-terraform-demo"
  organization   = var.org_name
  queue_all_runs = false
  vcs_repo {
    identifier     = "mtharpe/terraform-aws-demo"
    branch         = "master"
    oauth_token_id = var.oauth_token_id
  }
}