provider "azurerm" {
  features {}
}

resource "azurerm_virtual_machine" "example" {
  name                  = var.vm_name
  location              = var.location
  resource_group_name   = var.resource_group_name
  network_interface_ids = [module.network.public_network_interface_ids[0]]  # Use a interface de rede pública do módulo de rede

  vm_size              = var.vm_size
  admin_username       = var.admin_username
  admin_password       = var.admin_password
  disable_password_authentication = false

  os_profile {
    computer_name  = "myvm"
    admin_username = var.admin_username
    admin_password = var.admin_password
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name              = "myosdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Premium_LRS"
  }
}
