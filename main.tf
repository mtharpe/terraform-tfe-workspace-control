provider "tfe" {
  token = var.tfe_api_key
}

data "http" "tfc_ips" {
  url = "https://app.terraform.io/api/meta/ip-ranges"

  request_headers = {
    Accept = "application/vnd.api+json"
  }
}
