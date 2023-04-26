variable "pe_name" {
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

variable "subnet_id" {
  description = "(Required) The ID of the Subnet from which Private IP Addresses will be allocated for this Private Endpoint."
  #type = string
}

variable "service_name" {
  description = "(Required) Specifies the Name of the Private Service Connection"
}

variable "resource_id" {
  description = "(Optional) The ID of the Private Link Enabled Remote Resource which this Private Endpoint should be connected to"
  type = string  
}

variable "subresource" {
  description = "(Optional) A list of subresource names which the Private Endpoint is able to connect to"
  #type = string
}

variable "dns_name" {
  description = " (Required) The name of the Private DNS Zone"
  type = string
}