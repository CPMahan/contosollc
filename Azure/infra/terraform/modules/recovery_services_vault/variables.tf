variable "rsv_name" {
  description = "(Required) Specifies the name of the Recovery Services Vault"
  type = string
}

variable "location" {
  description = "(Required) Specifies the supported Azure location where the resource exists"
  type = string
}

variable "resource_group_name" {
  description = "(Required) The name of the resource group in which to create the Recovery Services Vault"
  type = string
}

variable "rsv_sku" {
  description = "(Required) Sets the vault's SKU"
  type = string
}