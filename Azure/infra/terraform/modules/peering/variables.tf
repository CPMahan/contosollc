variable "peer_name" {
  description = "(Required) The name of the virtual network peering"
  type = string
}

variable "resource_group_name" {
  description = "(Required) The name of the resource group in which to create the virtual network"
  type = string
}

variable "virtual_network_peer_from_name" {
  description = "(Required) The name of the virtual network"
  type = string
}

variable "virtual_network_peer_to_id" {
  description = "(Required) The full Azure resource ID of the remote virtual network"
  type = string
}