provider "tfe" {
  token = var.tfe_api_key
}

## Consul
// resource "tfe_workspace" "aws_consul_demo_setup" {
//   name         = "aws-consul-demo"
//   organization = var.org_name
//   queue_all_runs = false
//   vcs_repo {
//     identifier     = "mtharpe/consul-aws-demo"
//     branch         = "master"
//     oauth_token_id = var.oauth_token_id
//   }
// }