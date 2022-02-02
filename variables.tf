variable "role_id_a" {
  description = "Role ID of approle A"
  type = string
}

variable "secret_id_a" {
  description = "Secret ID of approle A"
  type = string
}

variable "role_id_b" {
  description = "Role ID of approle B"
  type = string
}

variable "VAULT_ADDR" {
  description = "Vault address"
  type = string
}
variable "VAULT_NAMESPACE" {
  description = "Vault address"
  type = string
  default = "admin"
}

variable "VAULT_TOKEN" {
  description = "Vault token"
  type = string
  
}