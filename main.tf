provider "azurerm" {
  features {}
  subscription_id = "b9bbda86-494f-4197-9327-d3a95336f6c5"
  
}

resource "azurerm_resource_group" "rg" {
  name     = var.main_rgname
  location = var.resource_group_location
}

module "vnet" {
  source = "./modules/vnet"

  resource_group_name = azurerm_resource_group.rg.name
  rg_location         = azurerm_resource_group.rg.location

  sg_name                       = var.sg_name
  vnet_name                     = var.main_vnet_name
  vnet_address_space            = var.vnet_address_space
  vnet_subnet                   = var.vnet_subnet
  vnet_subnet_address_prefixes  = var.vnet_subnet_address_prefixes
  vnet_tags                     = var.vnet_tags
}

#acr

module "acr" {
  source = "./modules/acr"

  acr_name            = var.acr_name
  resource_group_location = var.resource_group_location
  resource_group_name = var.main_rgname 
  acr_location        = var.acr_location
  acr_sku             = "premiun"
  acr_tags            = var.acr_tags
}

#Azure KeyVault

module "keyvault" {
  source = "./modules/keyvault"

  key_vault_name = var.key_vault_name
  resource_group_name = var.ain_rgname
  key_vault_location = var.key_vault_location
  tenant_id = var.tenant_id
  admin_object_id = var.admin_object_id
}
 


