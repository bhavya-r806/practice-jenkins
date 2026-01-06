# Resource Group

main_rgname   = "rg-dev"
main_location = "centralindia"

# Virtual Network (VNet)
main_vnet_name          = "vnet-dev"
vnet_address_space      = ["10.0.0.0/16"]

# Subnet

vnet_subnet                 = "subnet-dev"
vnet_subnet_address_prefixes = ["10.0.1.0/24"]

# Network Security Group

sg_name = "nsg-dev"

# Virtual Network Tagging

vnet_tags = "dev"


# Azure Container Registry (ACR)
acr_name     = "acrdev12345"           # must be globally unique
acr_location = "centralindia"
acr_tags     = {
  environment = "dev"
  project     = "infra"
}

# Azure Kubernetes Service (AKS)

cluster_name        = "aks-dev"
cluster_dns_prefix  = "aksdev"
node_pool_name      = "system"
node_pool_count     = 2
cluster_vm_size     = "Standard_D2_v2"
cluster_tags        = "dev"
