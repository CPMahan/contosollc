module "hub_network_resource_group" {
  source              = "./modules/resource_group"
  resource_group_name = var.hub_network_resource_group_name
  location            = var.location
}

module "hub_management_resource_group" {
  source              = "./modules/resource_group"
  resource_group_name = var.hub_management_resource_group_name
  location            = var.location
}

module "dev_network_resource_group" {
  source              = "./modules/resource_group"
  resource_group_name = var.dev_network_resource_group_name
  location            = var.location
}

module "dev_app_resource_group" {
  source              = "./modules/resource_group"
  resource_group_name = var.dev_app_resource_group_name
  location            = var.location
}

module "hub_virtual_network" {
  source                        = "./modules/virtual_network"
  virtual_network_name          = var.hub_virtual_network_name
  location                      = var.location
  resource_group_name           = var.hub_network_resource_group_name
  virtual_network_address_space = var.hub_virtual_network_address_space

  depends_on = [
    module.hub_network_resource_group
  ]
}

module "dev_virtual_network" {
  source                        = "./modules/virtual_network"
  virtual_network_name          = var.dev_virtual_network_name
  location                      = var.location
  resource_group_name           = var.dev_network_resource_group_name
  virtual_network_address_space = var.dev_virtual_network_address_space

  depends_on = [
    module.dev_network_resource_group
  ]
}

module "dev_to_hub_peering" {
  source                         = "./modules/peering"
  peer_name                      = var.dev_to_hub_peering_name
  resource_group_name            = var.hub_network_resource_group_name
  virtual_network_peer_from_name = var.hub_virtual_network_name
  virtual_network_peer_to_id     = module.dev_virtual_network.id

  depends_on = [
    module.hub_virtual_network, module.dev_virtual_network
  ]
}

module "hub_to_dev_peering" {
  source                         = "./modules/peering"
  peer_name                      = var.hub_to_dev_peering_name
  resource_group_name            = var.dev_network_resource_group_name
  virtual_network_peer_from_name = var.dev_virtual_network_name
  virtual_network_peer_to_id     = module.hub_virtual_network.id

  depends_on = [
    module.hub_virtual_network, module.dev_virtual_network
  ]
}

module "bastion_subnet" {
  source                  = "./modules/subnet"
  subnet_name             = var.bastion_subnet_name
  resource_group_name     = var.hub_network_resource_group_name
  virtual_network_name    = var.hub_virtual_network_name
  subnet_address_prefixes = var.bastion_subnet_prefixes

  depends_on = [
    module.hub_virtual_network
  ]
}

module "app_gateway_subnet" {
  source                  = "./modules/subnet"
  subnet_name             = var.app_gateway_subnet_name
  resource_group_name     = var.hub_network_resource_group_name
  virtual_network_name    = var.hub_virtual_network_name
  subnet_address_prefixes = var.app_gateway_subnet_prefixes

  depends_on = [
    module.hub_virtual_network
  ]
}

module "management_tools_subnet" {
  source                  = "./modules/subnet"
  subnet_name             = var.management_tools_subnet_name
  resource_group_name     = var.hub_network_resource_group_name
  virtual_network_name    = var.hub_virtual_network_name
  subnet_address_prefixes = var.management_tools_subnet_prefixes

  depends_on = [
    module.hub_virtual_network
  ]
}

module "hub_endpoint_subnet" {
  source                  = "./modules/subnet"
  subnet_name             = var.hub_endpoint_subnet_name
  resource_group_name     = var.hub_network_resource_group_name
  virtual_network_name    = var.hub_virtual_network_name
  subnet_address_prefixes = var.hub_endpoint_subnet_prefixes

  depends_on = [
    module.hub_virtual_network
  ]
}

module "dev_kv_subnet" {
  source                  = "./modules/subnet"
  subnet_name             = var.dev_kv_subnet_name
  resource_group_name     = var.dev_network_resource_group_name
  virtual_network_name    = var.dev_virtual_network_name
  subnet_address_prefixes = var.dev_kv_subnet_prefixes

  depends_on = [
    module.dev_virtual_network
  ]
}

module "dev_data_subnet" {
  source                  = "./modules/subnet"
  subnet_name             = var.dev_data_subnet_name
  resource_group_name     = var.dev_network_resource_group_name
  virtual_network_name    = var.dev_virtual_network_name
  subnet_address_prefixes = var.dev_data_subnet_prefixes

  depends_on = [
    module.dev_virtual_network
  ]
}

module "dev_asp_subnet" {
  source                  = "./modules/subnet"
  subnet_name             = var.dev_asp_subnet_name
  resource_group_name     = var.dev_network_resource_group_name
  virtual_network_name    = var.dev_virtual_network_name
  subnet_address_prefixes = var.dev_asp_subnet_prefixes

  depends_on = [
    module.dev_virtual_network
  ]
}

module "dev_asp_endpoint_subnet" {
  source                  = "./modules/subnet"
  subnet_name             = var.dev_asp_endpoint_subnet_name
  resource_group_name     = var.dev_network_resource_group_name
  virtual_network_name    = var.dev_virtual_network_name
  subnet_address_prefixes = var.dev_asp_endpoint_subnet_prefixes

  depends_on = [
    module.dev_virtual_network
  ]
}

module "bastion" {
  source              = "./modules/bastion"
  bastion_name        = var.bastion_host_name
  location            = var.location
  resource_group_name = var.hub_network_resource_group_name

  dependepends_on = [
    module.bastion_subnet
  ]
}

module "hub_key_vault" {
  source              = "./modules/key_vault"
  key_vault_name      = var.hub_key_vault_name
  resource_group_name = var.hub_management_resource_group_name
  location            = var.location
  tenant_id           = var.tenant_id
  sku_name            = var.key_vault_sku_name

  depends_on = [
    module.hub_management_resource_group
  ]
}

module "dev_key_vault" {
  source              = "./modules/key_vault"
  key_vault_name      = var.dev_key_vault_name
  resource_group_name = var.dev_app_resource_group_name
  location            = var.location
  tenant_id           = var.tenant_id
  sku_name            = var.key_vault_sku_name

  depends_on = [
    module.dev_app_resource_group
  ]
}

module "hub_storage_account" {
  source                   = "./modules/storage_account"
  storage_account_name     = var.hub_storage_account_name
  resource_group_name      = var.hub_management_resource_group_name
  location                 = var.location
  storage_account_tier     = var.hub_storage_account_tier
  account_replication_type = var.hub_storage_account_replication_type
  default_network_action   = var.hub_storage_default_network_action
  #storage_account_ip_rules = var.hub_storage_account_ip_rules
  #vnet_subnet_ids = var.hub_storage_vnet_subnet_ids
  #vnet_subnet_ids = module.hub_endpoint_subnet.subnet_id

  depends_on = [
    module.hub_management_resource_group
  ]
}

# module "dev_storage_account" {
#   source = "./modules/storage_account"
#   storage_account_name = var.dev_storage_account_name
#   resource_group_name = var.dev_resource_group_name
#   location = var.location
#   storage_account_tier = var.dev_storage_account_tier
#   account_replication_type = var.dev_storage_account_replication_type
#   default_network_action = var.dev_storage_default_network_action
#   storage_account_ip_rules = var.dev_storage_account_ip_rules
#   vnet_subnet_ids = var.dev_storage_vnet_subnet_ids
# }

module "sql" {
  source                       = "./modules/sql_database"
  server_name                  = var.sql_server_name
  resource_group_name          = var.dev_app_resource_group_name
  location                     = var.location
  sql_server_version           = var.sql_server_version
  administrator_login          = var.sql_server_admin_login
  administrator_login_password = var.sql_server_admin_login_password
  database_name                = var.sql_database_name

  depends_on = [
    module.dev_app_resource_group
  ]
}

module "log_analytics_workspace" {
  source                   = "./modules/log_analytics"
  law_name                 = var.law_name
  resource_group_name      = var.hub_management_resource_group_name
  location                 = var.location
  law_sku                  = var.law_sku
  data_source_type         = var.law_data_source_type
  law_storage_account_name = var.law_storage_account_name
  account_tier             = var.hub_storage_account_tier
  #  account_replication_type = var.hub_storage_account_replication_type
  #  vnet_subnet_ids          = module.hub_endpoint_subnet.subnet_id
  #   #workspace_resource_id
  #   #storage_account_ids

  depends_on = [
    module.hub_management_resource_group
  ]
}

module "mgt_tools_vm" {
  source              = "./modules/virtual_machine"
  nic_name            = var.mgt_tools_nic_name
  resource_group_name = var.hub_management_resource_group_name
  location            = var.location
  ip_config_name      = var.mgt_tools_ip_config_name
  # subnet_id = var.mgt_tools_vm_subnet_id
  subnet_id                     = module.management_tools_subnet.subnet_id
  private_ip_address_allocation = var.mgt_tools_private_ip_address_allocation
  vm_name                       = var.mgt_tools_vm_name
  vm_size                       = var.mgt_tools_vm_size
  vm_admin_username             = var.mgt_tools_vm_admin_username
  vm_admin_password             = var.mgt_tools_vm_admin_password
  vm_caching                    = var.mgt_tools_vm_caching
  vm_storage_account_type       = var.mgt_tools_vm_storage_account_type
  # vm_image_id                   = var.mgt_tools_vm_image_id
}

module "recovery_services_vault" {
  source              = "./modules/recovery_services_vault"
  rsv_name            = var.rsv_name
  resource_group_name = var.hub_management_resource_group_name
  location            = var.location
  rsv_sku             = var.rsv_sku

  depends_on = [
    module.hub_management_resource_group
  ]
}

module "app_service" {
  source              = "./modules/app_service"
  asp_name            = var.asp_name
  resource_group_name = var.dev_app_resource_group_name
  location            = var.location
  app_name            = var.web_app_name

  depends_on = [
    module.dev_app_resource_group
  ]
}

module "hub_kv_private_endpoint" {
  source              = "./modules/private_endpoint"
  pe_name             = var.hub_kv_endpoint_name
  location            = var.location
  resource_group_name = var.hub_management_resource_group_name
  subnet_id           = module.hub_endpoint_subnet.subnet_id
  service_name        = var.hub_kv_privateserviceconnection_name
  resource_id         = module.hub_key_vault.id
  subresource         = ["vault"]

  depends_on = [
    module.hub_endpoint_subnet, module.hub_key_vault
  ]
}

module "hub_sa_private_endpoint" {
  source              = "./modules/private_endpoint"
  pe_name             = var.hub_sa_endpoint_name
  location            = var.location
  resource_group_name = var.hub_management_resource_group_name
  subnet_id           = module.hub_endpoint_subnet.subnet_id
  service_name        = var.hub_sa_privateserviceconnection_name
  resource_id         = module.hub_storage_account.id
  subresource         = ["blob"]

  depends_on = [
    module.hub_endpoint_subnet, module.hub_storage_account
  ]
}

module "dev_kv_private_endpoint" {
  source              = "./modules/private_endpoint"
  pe_name             = var.dev_kv_endpoint_name
  location            = var.location
  resource_group_name = var.dev_app_resource_group_name
  subnet_id           = module.dev_kv_subnet.subnet_id
  service_name        = var.dev_kv_privateserviceconnection_name
  resource_id         = module.dev_key_vault.id
  subresource         = ["vault"]

  depends_on = [
    module.dev_kv_subnet, module.dev_key_vault
  ]
}

module "dev_db_private_endpoint" {
  source              = "./modules/private_endpoint"
  pe_name             = var.dev_db_endpoint_name
  location            = var.location
  resource_group_name = var.dev_app_resource_group_name
  subnet_id           = module.dev_data_subnet.subnet_id
  service_name        = var.dev_db_privateserviceconnection_name
  resource_id         = module.sql.server_id
  subresource         = ["sqlServer"]

  depends_on = [
    module.dev_data_subnet, module.sql
  ]
}

module "dev_app_private_endpoint" {
  source              = "./modules/private_endpoint"
  pe_name             = var.dev_asp_endpoint_name
  location            = var.location
  resource_group_name = var.dev_app_resource_group_name
  subnet_id           = module.dev_asp_endpoint_subnet.subnet_id
  service_name        = var.dev_asp_privateserviceconnection_name
  resource_id         = module.app_service.app_id
  subresource         = ["sites"]

  depends_on = [
    module.dev_asp_endpoint_subnet, module.app_service
  ]
}
