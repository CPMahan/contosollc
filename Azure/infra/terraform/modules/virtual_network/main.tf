resource "azurerm_virtual_network" "virtual_network" {
  name                = var.virtual_network_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.virtual_network_address_space #["10.0.0.0/16"]
}

resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.subnet_address_prefixes #["10.0.1.0/24"]

  depends_on = [
    azurerm_virtual_network.virtual_network
  ]
}

resource "azurerm_virtual_network_peering" "peering" {
  name                      = var.peer_name
  resource_group_name       = var.resource_group_name
  virtual_network_name      = var.virtual_network_peer_from_name
  remote_virtual_network_id = var.virtual_network_peer_to_id
}