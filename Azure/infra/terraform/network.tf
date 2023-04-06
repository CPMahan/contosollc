# # Hub Virtual Network Module
# module "hub-vnet" {
#   source              = "./modules/virtual_network"
#   resource_group_name = var.hub_resource_group_name
#   location            = var.location
#   vnet_name           = var.hub_vnet_name
#   address_space       = var.hub_vnet_address_space

#   subnets = [
#     {
#       name : "AzureBastionSubnet"
#       address_prefixes : var.hub_testnet_firewall_subnet_address_prefix
#       enforce_private_link_endpoint_network_policies : var.enforce_private_link_endpoint_network_policies
#       enforce_private_link_service_network_policies : var.enforce_private_link_service_network_policies
#     },
#     {
#       name : "hub-eus-agw-sn"
#       address_prefixes : var.hub_testnet_bastion_subnet_address_prefix
#       enforce_private_link_endpoint_network_policies : var.enforce_private_link_endpoint_network_policies
#       enforce_private_link_service_network_policies : var.enforce_private_link_service_network_policies
#     },
#     {
#       name : "hub-eus-mgt-sn"
#       address_prefixes : var.hub_testnet_shared_subnet_address_prefix
#       enforce_private_link_endpoint_network_policies : var.enforce_private_link_endpoint_network_policies
#       enforce_private_link_service_network_policies : var.enforce_private_link_service_network_policies
#     },
#     {
#       name : "hub-eus-pe-sn"
#       address_prefixes : var.hub_testnet_shared_subnet_address_prefix
#       enforce_private_link_endpoint_network_policies : var.enforce_private_link_endpoint_network_policies
#       enforce_private_link_service_network_policies : var.enforce_private_link_service_network_policies
#     }
#   ]
# }

# # Spoke Virtual Network Module
# module "spoke-testnets_vnet" {
#   source              = "./modules/virtual_network"
#   resource_group_name = var.base_resource_group_name
#   location            = var.location
#   vnet_name           = var.spoke_testnet_vnet_name
#   address_space       = var.spoke_testnet_vnet_address_space
#   tags                = var.tags

#   subnets = [
#     {
#       name : "SepoliaFastSubnet"
#       address_prefixes : var.spoke_sepolia_subnet_address_prefix
#       enforce_private_link_endpoint_network_policies : var.enforce_private_link_endpoint_network_policies
#       enforce_private_link_service_network_policies : var.enforce_private_link_service_network_policies
#     },
#     {
#       name : "SepoliaArchiveSubnet"
#       address_prefixes : var.spoke_sepolia_archive_subnet_address_prefix
#       enforce_private_link_endpoint_network_policies : var.enforce_private_link_endpoint_network_policies
#       enforce_private_link_service_network_policies : var.enforce_private_link_service_network_policies
#     },
#     {
#       name : "SepoliaFastVMSSSubnet"
#       address_prefixes : var.spoke_sepolia_fast_vmss_subnet_address_prefix
#       enforce_private_link_endpoint_network_policies : var.enforce_private_link_endpoint_network_policies
#       enforce_private_link_service_network_policies : var.enforce_private_link_service_network_policies
#     },
#     {
#       name : "SepoliaArchiveVMSSSubnet"
#       address_prefixes : var.spoke_sepolia_archive_vmss_subnet_address_prefix
#       enforce_private_link_endpoint_network_policies : var.enforce_private_link_endpoint_network_policies
#       enforce_private_link_service_network_policies : var.enforce_private_link_service_network_policies
#     },
#     {
#       name : "GoerliFastSubnet"
#       address_prefixes : var.spoke_goerli_subnet_address_prefix
#       enforce_private_link_endpoint_network_policies : var.enforce_private_link_endpoint_network_policies
#       enforce_private_link_service_network_policies : var.enforce_private_link_service_network_policies
#       }, {
#       name : "GoerliArchiveSubnet"
#       address_prefixes : var.spoke_goerli_archive_subnet_address_prefix
#       enforce_private_link_endpoint_network_policies : var.enforce_private_link_endpoint_network_policies
#       enforce_private_link_service_network_policies : var.enforce_private_link_service_network_policies
#     },
#     {
#       name : "GoerliFastVMSSSubnet"
#       address_prefixes : var.spoke_goerli_fast_vmss_subnet_address_prefix
#       enforce_private_link_endpoint_network_policies : var.enforce_private_link_endpoint_network_policies
#       enforce_private_link_service_network_policies : var.enforce_private_link_service_network_policies
#       }, {
#       name : "GoerliArchiveVMSSSubnet"
#       address_prefixes : var.spoke_goerli_archive_vmss_subnet_address_prefix
#       enforce_private_link_endpoint_network_policies : var.enforce_private_link_endpoint_network_policies
#       enforce_private_link_service_network_policies : var.enforce_private_link_service_network_policies
#     },
#     {
#       name : "RinkebyFastSubnet"
#       address_prefixes : var.spoke_rinkeby_subnet_address_prefix
#       enforce_private_link_endpoint_network_policies : var.enforce_private_link_endpoint_network_policies
#       enforce_private_link_service_network_policies : var.enforce_private_link_service_network_policies
#     },
#     {
#       name : "RinkebyArchiveSubnet"
#       address_prefixes : var.spoke_rinkeby_archive_subnet_address_prefix
#       enforce_private_link_endpoint_network_policies : var.enforce_private_link_endpoint_network_policies
#       enforce_private_link_service_network_policies : var.enforce_private_link_service_network_policies
#     },
#     {
#       name : "RinkebyFastVMSSSubnet"
#       address_prefixes : var.spoke_rinkeby_fast_vmss_subnet_address_prefix
#       enforce_private_link_endpoint_network_policies : var.enforce_private_link_endpoint_network_policies
#       enforce_private_link_service_network_policies : var.enforce_private_link_service_network_policies
#     },
#     {
#       name : "RinkebyArchiveVMSSSubnet"
#       address_prefixes : var.spoke_rinkeby_archive_vmss_subnet_address_prefix
#       enforce_private_link_endpoint_network_policies : var.enforce_private_link_endpoint_network_policies
#       enforce_private_link_service_network_policies : var.enforce_private_link_service_network_policies
#     }
#   ]
# }
