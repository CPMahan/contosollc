variable "dns_name" {
  description = " (Required) The name of the Private DNS Zone"
  type = string
}

variable "resource_group_name" {
  description = "(Required) The name of the resource group in which to create the Recovery Services Vault"
  type = string
}