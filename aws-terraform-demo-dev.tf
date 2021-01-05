# AWS Demo Dev Branch

resource "tfe_workspace" "aws_terraform_demo_setup_dev" {
  name           = "aws-terraform-demo"
  organization   = var.org_name
  queue_all_runs = false
  vcs_repo {
    identifier     = "mtharpe/terraform-aws-demo"
    branch         = "dev"
    oauth_token_id = var.oauth_token_id
  }
}

resource "tfe_variable" "aws_tfe_user_dev" {
  key          = "user"
  value        = var.org_name
  category     = "terraform"
  workspace_id = tfe_workspace.aws_terraform_demo_setup_dev.id
  description  = "TFE ORG User"
  sensitive    = false
}

resource "tfe_variable" "aws_access_key_id_dev" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = var.aws_access_key_id
  category     = "env"
  workspace_id = tfe_workspace.aws_terraform_demo_setup_dev.id
  description  = "AWS Access key"
  sensitive    = true
}

resource "tfe_variable" "aws_secret_access_key_dev" {
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = var.aws_secret_access_key
  category     = "env"
  workspace_id = tfe_workspace.aws_terraform_demo_setup_dev.id
  description  = "AWS Secret Access key"
  sensitive    = true
}

resource "tfe_variable" "aws_session_token_dev" {
  key          = "AWS_SESSION_TOKEN"
  value        = var.aws_session_token
  category     = "env"
  workspace_id = tfe_workspace.aws_terraform_demo_setup_dev.id
  description  = "AWS Session Token"
  sensitive    = true
}

resource "tfe_variable" "aws_default_region_dev" {
  key          = "AWS_DEFAULT_REGION"
  value        = var.aws_region
  category     = "env"
  workspace_id = tfe_workspace.aws_terraform_demo_setup_dev.id
  description  = "AWS Default Region"
}

resource "tfe_variable" "public_key_dev" {
  key          = "public_key"
  value        = var.public_key
  category     = "terraform"
  workspace_id = tfe_workspace.aws_terraform_demo_setup_dev.id
  description  = "SSH Public Key"
  sensitive    = true
}

resource "tfe_variable" "private_key_dev" {
  key          = "private_key"
  value        = var.private_key
  category     = "terraform"
  workspace_id = tfe_workspace.aws_terraform_demo_setup_dev.id
  description  = "SSH Private Key"
  sensitive    = true
}

resource "tfe_variable" "aws_instance_username_dev" {
  key          = "aws_instance_username"
  value        = var.instance_username
  category     = "terraform"
  workspace_id = tfe_workspace.aws_terraform_demo_setup_dev.id
  description  = "Instance Username"
}

resource "tfe_variable" "aws_instance_password_dev" {
  key          = "aws_instance_password"
  value        = var.instance_password
  category     = "terraform"
  workspace_id = tfe_workspace.aws_terraform_demo_setup_dev.id
  description  = "Instance Password"
  sensitive    = true
}