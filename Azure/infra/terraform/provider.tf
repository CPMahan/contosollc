terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.50.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "2.31.0"
    }
  }
}

provider "azurerm" {
  use_oidc = true
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}
