variable "hub_resource_group_name" {
  description = "(Required) Name of resource group in hub"
  type        = string
}

variable "dev_resource_group_name" {
  description = "(Required) Name of resource group in dev"
  type        = string
}

variable "location" {
  description = "(Required) Location of resources"
  type        = string
}

variable "hub_virtual_network_name" {
  description = "(Required) The name of the virtual network for the hub resources"
  type = string
}

variable "dev_virtual_network_name" {
  description = "(Required) The name of the virtual network for the dev resources"
  type = string
}

variable "hub_virtual_network_address_space" {
  description = "(Required) The address space that is used the hub's virtual network"
  type = list(string)
}

variable "dev_virtual_network_address_space" {
  description = "(Required) The address space that is used the dev's virtual network"
  type = list(string)
}

variable "bastion_subnet_name" {
  description = "(Required) The name of the subnet"
  type = string
}

variable "bastion_subnet_prefixes" {
  description = "(Required) The address prefixes to use for the subnet"
  type = list(string)
}

variable "app_gateway_subnet_name" {
  description = "(Required) The name of the subnet"
  type = string
}

variable "app_gateway_subnet_prefixes" {
  description = "(Required) The address prefixes to use for the subnet"
  type = list(string)
}

variable "management_tools_subnet_name" {
  description = "(Required) The name of the subnet"
  type = string
}

variable "management_tools_subnet_prefixes" {
  description = "(Required) The address prefixes to use for the subnet"
  type = list(string)
}

variable "hub_endpoint_subnet_name" {
  description = "(Required) The name of the subnet"
  type = string
}

variable "hub_endpoint_subnet_prefixes" {
  description = "(Required) The address prefixes to use for the subnet"
  type = list(string)
}

variable "dev_kv_subnet_name" {
  description = "(Required) The name of the subnet"
  type = string
}

variable "dev_kv_subnet_prefixes" {
  description = "(Required) The address prefixes to use for the subnet"
  type = list(string)
}

variable "dev_data_subnet_name" {
  description = "(Required) The name of the subnet"
  type = string
}

variable "dev_data_subnet_prefixes" {
  description = "(Required) The address prefixes to use for the subnet"
  type = list(string)
}

variable "dev_asp_subnet_name" {
  description = "(Required) The name of the subnet"
  type = string
}

variable "dev_asp_subnet_prefixes" {
  description = "(Required) The address prefixes to use for the subnet"
  type = list(string)
}

variable "dev_asp_endpoint_subnet_name" {
  description = "(Required) The name of the subnet"
  type = string
}

variable "dev_asp_endpoint_subnet_prefixes" {
  description = "(Required) The address prefixes to use for the subnet"
  type = list(string)
}

variable "dev_to_hub_peering_name" {
  description = "(Required) The name of the virtual network peering from the dev to the hub"
  type = string
}

variable "hub_to_dev_peering_name" {
  description = "(Required) The name of the virtual network peering from the hub to the dev"
  type = string
}

variable "hub_key_vault_name" {
  description = "(Required) Specifies the name of the Hub Key Vault"
  type = string
}

variable "dev_key_vault_name" {
  description = "(Required) Specifies the name of the Dev Key Vault"
  type = string
}

variable "tenant_id" {
  description = "(Required) The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault"
  type = string
}

variable "key_vault_sku_name" {
  description = "(Required) The Name of the SKU used for this Key Vault"
  type = string
}

variable "hub_storage_account_name" {
  description = "(Required) Name of the hub storage account"
  type        = string
}

variable "hub_storage_account_tier" {
  description = "(Required) Defines the tier to use for this storage account"
  type        = string
}

variable "hub_storage_account_replication_type" {
  description = "(Required) Defines the type of replication to use for this storage account"
  type        = string
}

variable "hub_storage_default_network_action" {
  description = "(Required) Specifies the default action of allow or deny when no other rules match"
  type        = string
}

# variable "hub_storage_account_ip_rules" {
#   description = "(Optional) List of public IP or IP ranges in CIDR Format"
#   type        = string
# }

# variable "hub_storage_vnet_subnet_ids" {
#   description = "(Optional) A list of resource ids for subnets"
#   type        = string
# }

variable "sql_server_name" {
  description = "(Required) Name of sql server"
  type = string
}

variable "sql_server_version" {
  description = "(Required) The version of the new server"
  type = string
}

variable "sql_server_admin_login" {
  description = "(Required) The administrator login name for the new server"
  type = string
}

variable "sql_server_admin_login_password" {
  description = "(Required) The password associated with the administrator login user"
  type = string
}

variable "sql_database_name" {
  description = "(Required) The name of the database"
  type = string
}

variable "law_name" {
  description = "(Required) name of the log analytics workspace"
  type        = string
}

variable "law_sku" {
  description = "(Required) The Name of the SKU used for this Log analytics."
  type        = string
}

variable "law_data_source_type" {
  description = "Data source type"
  type        = string
  default     = "customlogs"
}

# variable "mgt_tools_nic_name" {
#   description = "(Required) The name of the Network Interface"
#   type        = string
# }

# variable "mgt_tools_ip_config_name" {
#   description = "(Required) A name used for this IP Configuration"
#   type        = string
# }

# # variable "subnet_id" {
# #   description = "(Optional) The ID of the Subnet where this Network Interface should be located in"
# #   type        = string
# # }

# variable "mgt_tools_private_ip_address_allocation" {
#   description = "(Required) The allocation method used for the Private IP Address"
#   type        = string
# }

# variable "mgt_tools_vm_name" {
#   description = "(Required) The name of the Linux Virtual Machine"
#   type        = string
# }

# variable "mgt_tools_vm_size" {
#   description = "(Required) The SKU which should be used for this Virtual Machine"
#   type        = string
# }

# variable "mgt_tools_vm_admin_username" {
#   description = "(Required) The username of the local administrator used for the Virtual Machine"
#   type = string
# }

# # variable "network_interface_ids" {
# #   description = "(Required) A list of Network Interface IDs which should be attached to this Virtual Machine"
# #   type = string
# # }

# variable "mgt_tools_vm_caching" {
#   description = "(Required) The Type of Caching which should be used for the Internal OS Disk"
#   type = string
# }

# variable "mgt_tools_vm_storage_account_type" {
#   description = "(Required) The Type of Storage Account which should back this the Internal OS Disk"
#   type = string
# }

# variable "mgt_tools_vm_image_id" {
#   description = "(Optional) The ID of the Image which this Virtual Machine should be created from"
#   type = string
# }

variable "rsv_name" {
  description = "(Required) Specifies the name of the Recovery Services Vault"
  type = string
}

variable "rsv_sku" {
  description = "(Required) Sets the vault's SKU"
  type = string
}

variable "asp_name" {
  description = "(Required) Specifies the name of the App Service Plan component"
  type = string
}