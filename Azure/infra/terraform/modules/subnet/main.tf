resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = var.subnet_address_prefixes #["10.0.1.0/24"]

  private_endpoint_network_policies_enabled = false
  service_endpoints                         = var.service_endpoints
}
