variable role_id_a {}
variable "secret_id_a" {}

resource "vault_approle_auth_backend_login" "login" {
  role_id   = var.role_id_a
  secret_id = var.secret_id_a
}

output "token-a" {
  token_value = vault_approle_auth_backend_login.login
}

resource "vault_approle_auth_backend_role_secret_id" "id_b" {
  role_name = "approle-b"
}

output "secret_id_b" {
  secret_id_b = vault_approle_auth_backend_role_secret_id.id_b.secret_id
}