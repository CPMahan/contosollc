# resource "azurerm_public_ip" "example" {
#   name                = "agw-pip"
#   location            = var.location
#   resource_group_name = var.resource_group_name
#   allocation_method   = "Static"
#   sku                 = "Standard"
# }