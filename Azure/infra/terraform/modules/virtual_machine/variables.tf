variable "nic_name" {
  description = "(Required) The name of the Network Interface"
  type        = string
}

variable "resource_group_name" {
  description = "(Required) The name of the Resource Group in which to create the Network Interface"
  type        = string
}

variable "location" {
  description = "(Required) The location where the Network Interface should exist"
  type        = string
}

variable "ip_config_name" {
  description = "(Required) A name used for this IP Configuration"
  type        = string
}

variable "subnet_id" {
  description = "(Optional) The ID of the Subnet where this Network Interface should be located in"
  type        = string
}

variable "private_ip_address_allocation" {
  description = "(Required) The allocation method used for the Private IP Address"
  type        = string
}

variable "vm_name" {
  description = "(Required) The name of the Linux Virtual Machine"
  type        = string
}

variable "vm_size" {
  description = "(Required) The SKU which should be used for this Virtual Machine"
  type        = string
}

variable "vm_admin_username" {
  description = "(Required) The username of the local administrator used for the Virtual Machine"
  type = string
}

# variable "network_interface_ids" {
#   description = "(Required) A list of Network Interface IDs which should be attached to this Virtual Machine"
#   type = string
# }

variable "vm_caching" {
  description = "(Required) The Type of Caching which should be used for the Internal OS Disk"
  type = string
}

variable "vm_storage_account_type" {
  description = "(Required) The Type of Storage Account which should back this the Internal OS Disk"
  type = string
}

variable "vm_image_id" {
  description = "(Optional) The ID of the Image which this Virtual Machine should be created from"
  type = string
}