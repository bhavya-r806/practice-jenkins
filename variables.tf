#####################################
# Global / Resource Group Variables
#####################################

variable "main_rgname" {
  type        = string
  description = "Name of the Azure Resource Group where all resources will be deployed."
}

variable "main_location" {
  type        = string
  description = "Azure region for deploying all resources (e.g., centralindia, eastus)."
}

#####################################
# Virtual Network (VNet) Variables
#####################################

variable "main_vnet_name" {
  type        = string
  description = "Name of the Azure Virtual Network."
}

variable "vnet_address_space" {
  type        = set(string)
  description = "Address space for the Virtual Network in CIDR format (e.g., [\"10.0.0.0/16\"])."
}

#####################################
# Subnet Variables
#####################################

variable "vnet_subnet" {
  type        = string
  description = "Name of the subnet within the Virtual Network."
}

variable "vnet_subnet_address_prefixes" {
  type        = set(string)
  description = "CIDR address prefixes for the subnet (e.g., [\"10.0.1.0/24\"])."
}

#####################################
# Network Security Group Variables
#####################################

variable "sg_name" {
  type        = string
  description = "Name of the Network Security Group (NSG) to control inbound and outbound traffic."
}

#####################################
# Virtual Network Tagging
#####################################

variable "vnet_tags" {
  type        = string
  description = "Environment or classification tag applied to the Virtual Network (e.g., dev, prod)."
}

#####################################
# Azure Container Registry (ACR) Variables
#####################################

variable "acr_name" {
  type        = string
  description = "Name of the Azure Container Registry (must be globally unique)."
}

variable "acr_location" {
  type        = string
  description = "Primary Azure region where the Azure Container Registry will be deployed."
}

variable "acr_tags" {
  type        = map(string)
  description = "Key-value tags applied to the Azure Container Registry."
}

variable "resource_group_location" {
  type = string
  
}

variable "resource_group_name" {
  type = string
  
}


#####################################
# Azure Kubernetes Service (AKS) Variables
#####################################

variable "cluster_name" {
  type        = string
  description = "Name of the Azure Kubernetes Service (AKS) cluster."
}

variable "cluster_dns_prefix" {
  type        = string
  description = "DNS prefix used by the AKS cluster for internal communication."
}

variable "node_pool_name" {
  type        = string
  description = "Name of the default node pool in the AKS cluster."
}

variable "node_pool_count" {
  type        = number
  description = "Number of nodes in the AKS default node pool."
}

variable "cluster_vm_size" {
  type        = string
  description = "VM size for AKS worker nodes (e.g., Standard_D2_v2)."
}

variable "cluster_tags" {
  type        = string
  description = "Environment tag applied to the AKS cluster (e.g., dev, test, prod)."
}

#keyvault
variable "key_vault_name" {
  type = string
} 

variable "key_vault_location" {
  type = string
}

variable "tenant_id" {
    type = string
  
}

variable "admin_object_id" {
  type = string
}