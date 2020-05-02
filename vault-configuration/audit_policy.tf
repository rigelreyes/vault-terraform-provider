resource "vault_policy" "audit" {
  name = "audit"
  policy = file("policies/audit_policy.hcl")
}

