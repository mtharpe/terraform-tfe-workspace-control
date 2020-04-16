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

resource "tfe_variable" "aws_access_key_id" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = var.aws_access_key_id
  category     = "env"
  workspace_id = tfe_workspace.aws_terraform_demo_setup.id
  description  = "AWS Access key"
  sensitive    = true
}

resource "tfe_variable" "aws_secret_access_key" {
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = var.aws_secret_access_key
  category     = "env"
  workspace_id = tfe_workspace.aws_terraform_demo_setup.id
  description  = "AWS Secret Access key"
  sensitive    = true
}

resource "tfe_variable" "aws_default_region" {
  key          = "AWS_DEFAULT_REGION"
  value        = var.aws_region
  category     = "env"
  workspace_id = tfe_workspace.aws_terraform_demo_setup.id
  description  = "AWS Default Region"
}

resource "tfe_variable" "public_key" {
  key          = "public_key"
  value        = var.public_key
  category     = "terraform"
  workspace_id = tfe_workspace.aws_terraform_demo_setup.id
  description  = "SSH Public Key"
}

resource "tfe_variable" "private_key" {
  key          = "private_key"
  value        = var.private_key
  category     = "terraform"
  workspace_id = tfe_workspace.aws_terraform_demo_setup.id
  description  = "SSH Private Key"
}

resource "tfe_variable" "instance_username" {
  key          = "instance_username"
  value        = var.instance_username
  category     = "terraform"
  workspace_id = tfe_workspace.aws_terraform_demo_setup.id
  description  = "Instance Username"
}

resource "tfe_variable" "instance_password" {
  key          = "instance_password"
  value        = var.instance_password
  category     = "terraform"
  workspace_id = tfe_workspace.aws_terraform_demo_setup.id
  description  = "Instance Password"
}