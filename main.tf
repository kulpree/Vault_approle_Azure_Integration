terraform {
  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = "3.2.1"

    }
  }
}

provider "vault" {
  address = var.VAULT_ADDR
}

resource "vault_approle_auth_backend_login" "login" {
  role_id   = var.role_id_a
  secret_id = var.secret_id_a
}

output "token-a" {
  value = vault_approle_auth_backend_login.login
}

resource "vault_approle_auth_backend_role_secret_id" "id_b" {
  role_name = "approle-b"
}

output "secret_id_b" {
  value = vault_approle_auth_backend_role_secret_id.id_b.secret_id
}