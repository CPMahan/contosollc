variable "subnet_name" {
  description = "(Required) The name of the subnet"
  type = string
}

variable "virtual_network_name" {
  description = "(Required) The name of the virtual network"
  type = string
}

variable "resource_group_name" {
  description = "(Required) The name of the resource group in which to create the virtual network"
  type = string
}

variable "subnet_address_prefixes" {
  description = "(Required) The address prefixes to use for the subnet"
  type = list(string)
}