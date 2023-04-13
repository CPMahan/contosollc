resource "azurerm_log_analytics_workspace" "log_analytics_workspace" {
  name                = var.law_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.law_sku
}

# module "storage_account" {
#   source                   = "../storage_account"
#   storage_account_name     = var.law_storage_account_name
#   resource_group_name      = var.resource_group_name
#   location                 = var.location
#   storage_account_tier     = var.account_tier
#   account_replication_type = var.account_replication_type
# #  vnet_subnet_ids = var.vnet_subnet_ids
# }

resource "azurerm_log_analytics_linked_storage_account" "log_analytics_linked_storage_account" {
  data_source_type      = var.data_source_type
  resource_group_name   = var.resource_group_name
  workspace_resource_id = azurerm_log_analytics_workspace.log_analytics_workspace.id
  storage_account_ids   = [module.storage_account.id]
  depends_on            = [azurerm_log_analytics_workspace.log_analytics_workspace, module.storage_account]
}
