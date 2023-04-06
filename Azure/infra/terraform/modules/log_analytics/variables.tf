variable "resource_group_name" {
  description = "(Required) resource group name of the log analytics workspace"
  type        = string
}

variable "law_name" {
  description = "(Required) name of the log analytics workspace"
  type        = string
}

variable "location" {
  description = "(Required) location of the log analytics workspace"
  type        = string
}

variable "law_sku" {
  description = "(Required) The Name of the SKU used for this Log analytics."
  type        = string
}

# variable "law_storage_account_name" {
#   description = "Name of the storage account"
#   type        = string
# }

# variable "account_tier" {
#   description = "(Required) Defines the Tier to use for this storage account"
#   type        = string
#   default     = "Standard"
# }

# variable "account_replication_type" {
#   description = "(Required) Defines the type of replication to use for this storage account"
#   type        = string
#   default     = "LRS"
# }

variable "data_source_type" {
  description = "Data source type"
  type        = string
  default     = "customlogs"
}

