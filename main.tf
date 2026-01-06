provider "azurerm" {
  features {}
  subscription_id = "b9bbda86-494f-4197-9327-d3a95336f6c5"
}

resource "azurerm_resource_group" "rg" {
  name     = var.main_rgname
  location = var.main_location
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
  acr_location        = var.acr_location
  acr_sku             = "premiun"
  acr_tags            = var.acr_tags
}


#AKS
module "aks" {
  source = "./modules/aks"

  cluster_name        = var.cluster_name
  cluster_dns_prefix  = var.cluster_dns_prefix

  resource_group_name = azurerm_resource_group.rg.name
  rg_location         = azurerm_resource_group.rg.location

  node_pool_name      = var.node_pool_name
  node_pool_count     = var.node_pool_count
  cluster_vm_size     = var.cluster_vm_size
  cluster_tags        = var.cluster_tags
}

#Azure KeyVault

module "keyvault" {
  source = "./modules/keyvault"

  key_vault_name = var.key_vault_name
  key_vault_location = var.key_vault_location
  tenant_id = var.tenant_id
  admin_object_id = var.admin_object_id
}
  


