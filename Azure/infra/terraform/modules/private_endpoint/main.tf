resource "azurerm_private_endpoint" "private_endpoint" {
  name                = var.pe_name
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id

  private_service_connection {
    name                           = var.service_name
    private_connection_resource_id = var.resource_id
    is_manual_connection           = false
    subresource_names              = var.subresource
  }
}

resource "azurerm_private_dns_zone" "example" {
  name                = var.dns_name
  resource_group_name = var.resource_group_name

  depends_on = [
    azurerm_private_endpoint.private_endpoint
  ]
}
