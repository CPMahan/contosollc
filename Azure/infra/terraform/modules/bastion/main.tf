resource "azurerm_bastion_host" "example" {
  name                = var.bastion_name
  location            = var.location
  resource_group_name = var.resource_group_name

  #   ip_configuration {
  #     name                 = "configuration"
  #     subnet_id            = azurerm_subnet.example.id
  #     public_ip_address_id = azurerm_public_ip.example.id
  #   }
}