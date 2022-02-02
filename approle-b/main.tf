
resource "vault_approle_auth_backend_login" "login_b" {
  role_id   = var.role_id_b
  secret_id = var.secret_id
}

output "approle-secret_id-info" {
  value = vault_approle_auth_backend_login.login_b
}

data "vault_azure_access_credentials" "creds" {
  role                        = "my-role"
  validate_creds              = true
}

# provider "azure" {
#   client_id     = data.vault_azure_access_credentials.creds.client_id
#   client_secret = data.vault_azure_access_credentials.creds.client_secret
# }

output "azure_client_id" {
  value = data.vault_azure_access_credentials.creds.client_id
}

output "azure_client_secret" {
  value = data.vault_azure_access_credentials.creds.client_secret
}