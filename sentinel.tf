resource "tfe_sentinel_policy" "base_policy" {
  name         = "base_policy"
  description  = "This policy always passes"
  organization = var.org_name
  policy       = "main = rule { true }"
  enforce_mode = "hard-mandatory"
}