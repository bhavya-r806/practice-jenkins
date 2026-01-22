# Resource Group

main_rgname       = "rg-jenkins-demo"
resource_group_location = "EastUs"


# Virtual Network (VNet)
main_vnet_name          = "practice-vnet"
vnet_address_space      = ["10.0.0.0/16"]

# Subnet

vnet_subnet                 = "practice-subnet"
vnet_subnet_address_prefixes = ["10.0.1.0/24"]

# Network Security Group

sg_name = "practice-nsg"

# Virtual Network Tagging

vnet_tags = "UAT"


# Azure Container Registry (ACR)
acr_name     = "practice12345"           # must be globally unique
acr_location = "EastUS"
acr_tags     = {
  environment = "UAT"
  project     = "infra"
}

# key_vault

key_vault_name = "practice-vault"
key_vault_location = "EastUS"


tenant_id  = "ddce66d7-fc9b-4ffd-94ad-7db0f808249c"
admin_object_id = "6a977688-867b-4d11-9825-980d3f4223a6"