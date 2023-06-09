resource "azurerm_public_ip" "example" {
  name                = "public_ip"
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_bastion_host" "example" {
  name                = var.bastion_name
  location            = var.location
  resource_group_name = var.resource_group_name

    ip_configuration {
      name                 = "configuration"
      subnet_id            = var.subnet_id
      public_ip_address_id = azurerm_public_ip.example.id
    }
}