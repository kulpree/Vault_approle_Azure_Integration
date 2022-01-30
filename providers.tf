terraform {
  required_providers {
    aws = {
      source  = "hashicorp/azure"
      version = "2.94.0"
    }
    vault = {
      source  = "hashicorp/vault"
      version = "3.2.1"
    }
  }
}