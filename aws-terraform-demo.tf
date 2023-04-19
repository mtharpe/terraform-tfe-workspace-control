# AWS Demo

resource "tfe_workspace" "aws_terraform_demo_setup" {
  count          = var.create_aws ? 1 : 0
  name           = "aws-terraform-demo"
  organization   = var.org_name
  queue_all_runs = false
  tag_names      = ["demo"]
  vcs_repo {
    identifier     = "mtharpe/terraform-aws-demo"
    branch         = "master"
    oauth_token_id = var.oauth_token_id
  }
}

resource "tfe_variable" "aws_tfe_user" {
  count        = var.create_aws ? 1 : 0
  key          = "user"
  value        = var.org_name
  category     = "terraform"
  workspace_id = tfe_workspace.aws_terraform_demo_setup[count.index].id
  description  = "TFE ORG User"
  sensitive    = false
}

resource "tfe_variable" "public_key" {
  count        = var.create_aws ? 1 : 0
  key          = "public_key"
  value        = var.public_key
  category     = "terraform"
  workspace_id = tfe_workspace.aws_terraform_demo_setup[count.index].id
  description  = "SSH Public Key"
  sensitive    = true
}

resource "tfe_variable" "private_key" {
  count        = var.create_aws ? 1 : 0
  key          = "private_key"
  value        = var.private_key
  category     = "terraform"
  workspace_id = tfe_workspace.aws_terraform_demo_setup[count.index].id
  description  = "SSH Private Key"
  sensitive    = true
}

resource "tfe_variable" "aws_instance_username" {
  count        = var.create_aws ? 1 : 0
  key          = "aws_instance_username"
  value        = var.instance_username
  category     = "terraform"
  workspace_id = tfe_workspace.aws_terraform_demo_setup[count.index].id
  description  = "Instance Username"
}

resource "tfe_variable" "aws_instance_password" {
  count        = var.create_aws ? 1 : 0
  key          = "aws_instance_password"
  value        = var.instance_password
  category     = "terraform"
  workspace_id = tfe_workspace.aws_terraform_demo_setup[count.index].id
  description  = "Instance Password"
  sensitive    = true
}