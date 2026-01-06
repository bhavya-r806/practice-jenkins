resource "azurerm_network_security_group" "securitygroup" {
  name                = var.sg_name
  location            = var.rg_location
  resource_group_name = var.resource_group_name
}

resource "azurerm_virtual_network" "Vnet" {
  name                = var.vnet_name
  location            = var.rg_location
  resource_group_name = var.resource_group_name
  address_space       = var.vnet_address_space
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name             = var.vnet_subnet
    address_prefixes = var.vnet_subnet_address_prefixes
  }

  

  tags = {
    environment = var.vnet_tags
  }
}