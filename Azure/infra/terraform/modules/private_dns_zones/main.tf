resource "azurerm_private_dns_zone" "example" {
  name                = var.dns_name
  resource_group_name = var.resource_group_name
}