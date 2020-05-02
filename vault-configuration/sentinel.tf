resource "vault_egp_policy" "cidr-check" {
  name = "cidr-check"
  paths = ["*"]
  enforcement_level = "hard-mandatory"
  policy = file("sentinel_policies/cidr-check.sentinel")
}

resource "vault_egp_policy" "business-hrs" {
  name = "business-hrs"
  paths = ["secret/accounting/*"]
  enforcement_level = "soft-mandatory"
  policy = file("sentinel_policies/business-hrs.sentinel")
}