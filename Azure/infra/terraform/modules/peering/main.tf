resource "azurerm_virtual_network_peering" "peering" {
  name                      = var.peer_name
  resource_group_name       = var.resource_group_name
  virtual_network_name      = var.virtual_network_peer_from_name
  remote_virtual_network_id = var.virtual_network_peer_to_id
}