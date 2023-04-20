#Contoso variables

hub_network_resource_group_name         = "hub-eus-net-rg"
hub_management_resource_group_name      = "hub-eus-mgt-rg"
dev_network_resource_group_name         = "dev-eus-net-rg"
dev_app_resource_group_name             = "dev-eus-h2o-rg"
location                                = "eastus"
hub_virtual_network_name                = "hub-eus-vnet"
dev_virtual_network_name                = "dev-eus-vnet"
hub_virtual_network_address_space       = ["172.18.0.0/20"]
dev_virtual_network_address_space       = ["172.18.96.0/20"]
dev_to_hub_peering_name                 = "hub-eus-dev-peer"
hub_to_dev_peering_name                 = "dev-eus-hub-peer"
bastion_subnet_name                     = "AzureBastionSubnet"
bastion_host_name                       = "hub-eus-bstn"
bastion_subnet_prefixes                 = ["172.18.0.32/27"]
app_gateway_subnet_name                 = "hub-eus-agw-sn"
app_gateway_subnet_prefixes             = ["172.18.0.64/26"]
management_tools_subnet_name            = "hub-eus-mgt-sn"
management_tools_subnet_prefixes        = ["172.18.0.128/26"]
hub_endpoint_subnet_name                = "hub-eus-pe-sn"
hub_endpoint_subnet_prefixes            = ["172.18.1.0/25"]
dev_kv_subnet_name                      = "dev-eus-kv-sn"
dev_kv_subnet_prefixes                  = ["172.18.96.0/25"]
dev_data_subnet_name                    = "dev-eus-data-pe-sn"
dev_data_subnet_prefixes                = ["172.18.97.0/24"]
dev_asp_subnet_name                     = "dev-eus-asp-sn"
dev_asp_subnet_prefixes                 = ["172.18.98.0/24"]
dev_asp_endpoint_subnet_name            = "dev-eus-asp-pe-sn"
dev_asp_endpoint_subnet_prefixes        = ["172.18.99.0/24"]
hub_key_vault_name                      = "hub-eus-mgt-kv"
dev_key_vault_name                      = "dev-eus-h2o-kv"
tenant_id                               = "687f51c3-0c5d-4905-84f8-97c683a5b9d1"
key_vault_sku_name                      = "standard"
hub_storage_account_name                = "hubeusmgtsa"
hub_storage_account_tier                = "Standard"
hub_storage_account_replication_type    = "LRS"
hub_storage_default_network_action      = "Deny"
sql_server_name                         = "dev-eus-h2o-dbs"
sql_database_name                       = "dev-eus-h2o-db"
sql_server_version                      = "12.0"
sql_server_admin_login                  = "admin2023"
sql_server_admin_login_password         = "cedKNICEscmKsS13kcdNrbu2NI2bck"
law_name                                = "hub-eus-mgt-ws"
law_sku                                 = "PerGB2018"
law_storage_account_name                = "hubeuswssa"
law_data_source_type                    = "CustomLogs"
mgt_tools_nic_name                      = "hub-eus-mgt-nic"
mgt_tools_ip_config_name                = "hubmanagementconfig"
mgt_tools_private_ip_address_allocation = "Dynamic"
mgt_tools_vm_name                       = "hubeusmgt01"
mgt_tools_vm_size                       = "Standard_B1s"
mgt_tools_vm_admin_username             = "contosomgtvmadmin"
mgt_tools_vm_admin_password             = "changethiseventually123!"
mgt_tools_vm_caching                    = "ReadWrite"
mgt_tools_vm_storage_account_type       = "Standard_LRS"
#mgt_tools_vm_image_id = "Image Id"
rsv_name                              = "hub-eus-mgt-rsv"
rsv_sku                               = "Standard"
asp_name                              = "dev-eus-h2o-asp"
web_app_name                          = "dev-eus-h2o-app"
hub_kv_endpoint_name                  = "hub-eus-kv-pe"
hub_kv_privateserviceconnection_name  = "hub-eus-kv-privateserviceconnection"
hub_sa_endpoint_name                  = "hub-eus-sa-pe"
hub_sa_privateserviceconnection_name  = "hub-eus-sa-privateserviceconnection"
dev_kv_endpoint_name                  = "dev-eus-kv-pe"
dev_kv_privateserviceconnection_name  = "dev-eus-kv-privateserviceconnection"
dev_db_endpoint_name                  = "dev-eus-db-pe"
dev_db_privateserviceconnection_name  = "dev-eus-db-privateserviceconnection"
dev_asp_endpoint_name                 = "dev-eus-asp-pe"
dev_asp_privateserviceconnection_name = "dev-eus-asp-privateserviceconnection"
