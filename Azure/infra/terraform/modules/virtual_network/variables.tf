variable "virtual_network_name" {
  description = "(Required) The name of the virtual network"
  type = string
}

variable "resource_group_name" {
  description = "(Required) The name of the resource group in which to create the virtual network"
  type = string
}

variable "location" {
  description = "(Required) The location/region where the virtual network is created"
  type = string
}

variable "virtual_network_address_space" {
  description = "(Required) The address space that is used the virtual network"
  type = list(string)
}
