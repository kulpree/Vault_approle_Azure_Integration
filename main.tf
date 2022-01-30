module "GET-TOKEN-VIA-APPROLE" {
  source = "./token-role-seeding_approle-a"
}

resource "vault_approle_auth_backend_login" "login" {
  backend   = vault_auth_backend.approle.path
  role_id   = vault_approle_auth_backend_role.example.role_id
  secret_id = vault_approle_auth_backend_role_secret_id.id.secret_id
}