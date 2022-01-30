resource "vault_approle_auth_backend_role_secret_id" "id_b" {
  role_name = "approle-b"
}

resource "vault_approle_auth_backend_login" "login_b" {
  role_id   = var.role_id
  secret_id = vault_approle_auth_backend_role_secret_id.id_b.secret_id
}

output "approle-secret_id-info" {
  value = vault_approle_auth_backend_login.login_b
}