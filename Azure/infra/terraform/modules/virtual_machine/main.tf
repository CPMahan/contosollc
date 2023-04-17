resource "azurerm_network_interface" "network_interface" {
  name                = var.nic_name
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = var.ip_config_name
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = var.private_ip_address_allocation
  }
}

resource "azurerm_linux_virtual_machine" "virtual_machine" {
  name                = var.vm_name
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = var.vm_size
  admin_username      = var.vm_admin_username
  admin_password      = var.vm_admin_password
  network_interface_ids = [
    azurerm_network_interface.network_interface.id
  ]

  os_disk {
    caching              = var.vm_caching
    storage_account_type = var.vm_storage_account_type
  }

  source_image_reference {
    publisher = "canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts-gen2"
    version   = "latest"
  }

  disable_password_authentication = false
}
