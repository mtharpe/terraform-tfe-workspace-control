# AWS Demo

resource "tfe_workspace" "aws_terraform_demo_setup" {
  name                = "aws-terraform-demo"
  organization        = var.tfe_org_name
  queue_all_runs      = false
  assessments_enabled = true
  project_id          = data.tfe_project.aws.id
  tag_names           = ["demo"]
  vcs_repo {
    identifier                 = "mtharpe/terraform-aws-demo"
    branch                     = "master"
    github_app_installation_id = var.github_app_installation_id
  }
}

resource "tfe_variable" "aws_tfe_user" {
  key          = "user"
  value        = var.tfe_org_name
  category     = "terraform"
  workspace_id = tfe_workspace.aws_terraform_demo_setup.id
  description  = "TFE ORG User"
  sensitive    = false
}

resource "tfe_variable" "public_key" {
  key          = "public_key"
  value        = var.public_key
  category     = "terraform"
  workspace_id = tfe_workspace.aws_terraform_demo_setup.id
  description  = "SSH Public Key"
  sensitive    = true
}

resource "tfe_variable" "private_key" {
  key          = "private_key"
  value        = var.private_key
  category     = "terraform"
  workspace_id = tfe_workspace.aws_terraform_demo_setup.id
  description  = "SSH Private Key"
  sensitive    = true
}

resource "tfe_variable" "aws_instance_username" {
  key          = "aws_instance_username"
  value        = var.instance_username
  category     = "terraform"
  workspace_id = tfe_workspace.aws_terraform_demo_setup.id
  description  = "Instance Username"
}

resource "tfe_variable" "aws_instance_password" {
  key          = "aws_instance_password"
  value        = var.instance_password
  category     = "terraform"
  workspace_id = tfe_workspace.aws_terraform_demo_setup.id
  description  = "Instance Password"
  sensitive    = true
}