resource "azurerm_subnet" "public_subnet" {
  name                 = "public-subnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.public_subnet_vm
  address_prefixes     = ["10.0.1.0/24"]  
}

resource "azurerm_subnet" "private_subnet" {
  name                 = "private-subnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.private_subnet_vm
  address_prefixes     = ["10.0.2.0/24"]  
}
