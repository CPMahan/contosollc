variable "storage_account_name" {
  description = "(Required) Name of the storage account"
  type        = string
}

variable "resource_group_name" {
  description = "(Required) Name of the resource group"
  type        = string
}

variable "location" {
  description = "(Required) Location of the resource"
  type        = string
}

variable "storage_account_tier" {
  description = "(Required) Defines the tier to use for this storage account"
  type        = string
}

variable "account_replication_type" {
  description = "(Required) Defines the type of replication to use for this storage account"
  type        = string
}

variable "default_network_action" {
  description = "(Required) Specifies the default action of allow or deny when no other rules match"
  type        = string
  default = "Deny"
}

# variable "storage_account_ip_rules" {
#   description = "(Optional) List of public IP or IP ranges in CIDR Format"
#   type        = string
# }

# variable "vnet_subnet_ids" {
#   description = "(Optional) A list of resource ids for subnets"
#   type        = string
# }
