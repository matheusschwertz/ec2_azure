provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rsg_vm_up" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_virtual_network" "vnet_vm_up" {
  name                = var.resource_group_name
  address_space       = var.address_space
  location            = azurerm_resource_group.resource_group_name.location
  resource_group_name = azurerm_resource_group.resource_group_name.name
}

module "subnets" {
  source = "./subnets"
  
  resource_group_name       = azurerm_resource_group.rsg_vm_up.name
  virtual_network_name      = azurerm_virtual_network.vnet_vm_up.name
  subnet_names              = var.subnet_names
  subnet_address_prefixes   = var.subnet_address_prefixes
}
