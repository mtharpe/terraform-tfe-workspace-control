[![CircleCI](https://dl.circleci.com/status-badge/img/gh/mtharpe/terraform-tfe-workspace-control/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/mtharpe/terraform-tfe-workspace-control/tree/master)
![Terraform Testing and Release](https://github.com/mtharpe/terraform-tfe-workspace-control/workflows/Terraform%20Testing%20and%20Release/badge.svg)

# terraform-tfe-workspace-control
This is a workspace control for demo environment. You can use this, as well as the different branches to get access to different demos. Recently I have updated this repo to a much simplier way of dealing with credentials by using Terraform Cloud/Enterprise Variable Sets and using Policy Sets for Sentinel.

:warning: This will require a TFE API key as well as well as admin access to the workspace/org that you wouuld like to control.

## Example

```ruby
## Consul Demo Workspace
 resource "tfe_workspace" "aws_consul_demo_setup" {
   name         = "aws-consul-demo"
   organization = var.org_name
   queue_all_runs = false
   vcs_repo {
     identifier     = "someusername/consul-aws-demo"
     branch         = "master"
     oauth_token_id = var.oauth_token_id
  }
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | >= 0.26.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_http"></a> [http](#provider\_http) | n/a |
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | >= 0.26.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_policy_set.base_policy_set](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/policy_set) | resource |
| [tfe_sentinel_policy.base_policy](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/sentinel_policy) | resource |
| [tfe_variable.aws_instance_password](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.aws_instance_username](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.aws_tfe_user](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.azure_instance_password](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.azure_instance_username](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.gcp_instance_password](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.gcp_instance_username](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.private_key](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.public_key](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_workspace.aws_terraform_demo_setup](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [tfe_workspace.azure_terraform_demo_setup](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [tfe_workspace.gcp_terraform_demo_setup](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [http_http.tfc_ips](https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_instance_password"></a> [instance\_password](#input\_instance\_password) | Password to connect to instances | `any` | n/a | yes |
| <a name="input_instance_username"></a> [instance\_username](#input\_instance\_username) | Username to connect to instances | `any` | n/a | yes |
| <a name="input_oauth_token_id"></a> [oauth\_token\_id](#input\_oauth\_token\_id) | Terraform Enterprise/Cloud VCS oauth token ID (found in settings/VCS) | `any` | n/a | yes |
| <a name="input_org_name"></a> [org\_name](#input\_org\_name) | Terraform Enterprise/Cloud Organization name to create the workspaces in | `any` | n/a | yes |
| <a name="input_private_key"></a> [private\_key](#input\_private\_key) | Private key to connect to instances | `any` | n/a | yes |
| <a name="input_public_key"></a> [public\_key](#input\_public\_key) | Public key to connect to instances | `any` | n/a | yes |
| <a name="input_tfe_api_key"></a> [tfe\_api\_key](#input\_tfe\_api\_key) | Terraform Enterprise/Cloud API used to connect and configure workspaces | `any` | n/a | yes |

## Outputs

No outputs.

## License and Maintainer

Maintainer:: HashiCorp (<hello@hashicorp.com>)

Source:: https://github.com/mtharpe/terraform-tfe-workspace-control

Issues:: https://github.com/mtharpe/terraform-tfe-workspace-control/issues

License:: Apache-2.0

