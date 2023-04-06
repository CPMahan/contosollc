resource "azurerm_storage_account" "sa" {
  name                = var.storage_account_name
  resource_group_name = var.resource_group_name

  location                 = var.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.account_replication_type

  network_rules {
    default_action             = var.default_network_action
    #ip_rules                   = var.storage_account_ip_rules #["100.0.0.1"]
    virtual_network_subnet_ids = var.vnet_subnet_ids          #[azurerm_subnet.example.id]
  }

  #tags = var.tags
}
