![Terraform Testing and Release](https://github.com/mtharpe/terraform-tfe-workspace-control/workflows/Terraform%20Testing%20and%20Release/badge.svg)

# terraform-tfe-workspace-control
This is a workspace control for demo environment. You can use this, as well as the different branches to get access to different demos. 

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
| tfe | >= 0.15.1 |

## Providers

| Name | Version |
|------|---------|
| tfe | >= 0.15.1 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws\_access\_key\_id | AWS Access key | `any` | n/a | yes |
| aws\_region | AWS Region | `string` | `"us-east-2"` | no |
| aws\_secret\_access\_key | AWS Secret Access key | `any` | n/a | yes |
| azure\_client\_id | Azure Client ID | `any` | n/a | yes |
| azure\_client\_secret | Azure Clinet Secret | `any` | n/a | yes |
| azure\_subscription\_id | Azure Subscription ID | `any` | n/a | yes |
| azure\_tenant\_id | Azure Tenant ID | `any` | n/a | yes |
| google\_credentials | Google Cloud Credentials | `any` | n/a | yes |
| google\_project | Google Cloud Project | `any` | n/a | yes |
| google\_region | Google Cloud Region | `any` | n/a | yes |
| instance\_password | Password to connect to instances | `any` | n/a | yes |
| instance\_username | Username to connect to instances | `any` | n/a | yes |
| oauth\_token\_id | Terraform Enterprise/Cloud VCS oauth token ID (found in settings/VCS) | `any` | n/a | yes |
| org\_name | Terraform Enterprise/Cloud Organization name to create the workspaces in | `any` | n/a | yes |
| private\_key | Private key to connect to instances | `any` | n/a | yes |
| public\_key | Public key to connect to instances | `any` | n/a | yes |
| tfe\_api\_key | Terraform Enterprise/Cloud API used to connect and configure workspaces | `any` | n/a | yes |

## Outputs

No output.

## License and Maintainer

Maintainer:: HashiCorp (<hello@hashicorp.com>)

Source:: https://github.com/mtharpe/terraform-tfe-workspace-control

Issues:: https://github.com/mtharpe/terraform-tfe-workspace-control/issues

License:: Apache-2.0