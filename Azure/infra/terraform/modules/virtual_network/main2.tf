# # Vnet Creation
# resource "azurerm_virtual_network" "virtual_network" {
#   name                = var.vnet_name
#   resource_group_name = var.resource_group_name
#   location            = var.location
#   address_space       = var.address_space
#   dns_servers         = var.dns_servers
#   tags                = var.tags
# }

# #Subnet Creation
# resource "azurerm_subnet" "subnet" {
#   for_each = { for subnet in var.subnets : subnet.name => subnet }

#   name                                           = each.key
#   resource_group_name                            = var.resource_group_name
#   virtual_network_name                           = azurerm_virtual_network.virtual_network.name
#   address_prefixes                               = each.value.address_prefixes
#   enforce_private_link_endpoint_network_policies = each.value.enforce_private_link_endpoint_network_policies
#   enforce_private_link_service_network_policies  = each.value.enforce_private_link_service_network_policies

#   depends_on = [azurerm_virtual_network.vnet]
# }

# ##########################################

# resource "azurerm_virtual_network" "hubvnet" {
#   name                = "hub-eus-vnet"
#   resource_group_name = "hub-eus-net-rg"
#   location            = "eastus"
#   address_space       = ["172.18.0.0/20"]
# }

# resource "azurerm_subnet" "azurebastionsubnet" {
#   name                 = "AzureBastionSubnet"
#   resource_group_name  = "hub-eus-net-rg"
#   virtual_network_name = azurerm_virtual_network.hubvnet.name
#   address_prefixes     = ["172.18.0.32/27"]
# }

# resource "azurerm_subnet" "appgatewaysubnet" {
#   name                 = "hub-eus-agw-sn"
#   resource_group_name  = "hub-eus-net-rg"
#   virtual_network_name = azurerm_virtual_network.hubvnet.name
#   address_prefixes     = ["172.18.0.64/27"]
# }

# resource "azurerm_subnet" "hubmgttoolssubnet" {
#   name                 = "hub-eus-mgt-sn"
#   resource_group_name  = "hub-eus-net-rg"
#   virtual_network_name = azurerm_virtual_network.hubvnet.name
#   address_prefixes     = ["172.18.0.128/26"]
# }

# resource "azurerm_subnet" "hubprivateendpointsubnet" {
#   name                 = "hub-eus-pe-sn"
#   resource_group_name  = "hub-eus-net-rg"
#   virtual_network_name = azurerm_virtual_network.hubvnet.name
#   address_prefixes     = ["172.18.1.0/25"]
# }

# resource "azurerm_virtual_network" "devvnet" {
#   name                = "dev-eus-vnet"
#   resource_group_name = "dev-eus-net-rg"
#   location            = "eastus"
#   address_space       = ["172.18.96.0/20"]
# }

# resource "azurerm_subnet" "devmgtprivateendpointsubnet" {
#   name                 = "dev-eus-mgt-pe-sn"
#   resource_group_name  = "dev-eus-net-rg"
#   virtual_network_name = azurerm_virtual_network.devvnet.name
#   address_prefixes     = ["172.18.96.0/25"]
# }

# resource "azurerm_subnet" "devdataprivateendpointsubnet" {
#   name                 = "dev-eus-data-pe-sn"
#   resource_group_name  = "dev-eus-net-rg"
#   virtual_network_name = azurerm_virtual_network.devvnet.name
#   address_prefixes     = ["172.18.97.0/24"]
# }

# resource "azurerm_subnet" "devaspsubnet" {
#   name                 = "dev-eus-asp-sn"
#   resource_group_name  = "dev-eus-net-rg"
#   virtual_network_name = azurerm_virtual_network.devvnet.name
#   address_prefixes     = ["172.18.98.0/24"]
# }

# resource "azurerm_subnet" "devaspprivateendpointsubnet" {
#   name                 = "dev-eus-asp-pe-sn"
#   resource_group_name  = "dev-eus-net-rg"
#   virtual_network_name = azurerm_virtual_network.devvnet.name
#   address_prefixes     = ["172.18.99.0/24"]
# }