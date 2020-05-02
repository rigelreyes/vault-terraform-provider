resource "vault_policy" "key_officer" {
  name = "key_officer"
  policy = file("policies/key_officer_policy.hcl")
}

