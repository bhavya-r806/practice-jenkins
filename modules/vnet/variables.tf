#####################################
# Resource Group Variables
#####################################

variable "resource_group_name" {
  type        = string
  description = "Name of the Azure Resource Group where all resources will be created."
}

variable "rg_location" {
  type        = string
  description = "Azure region (location) in which the Resource Group will be deployed (e.g., eastus, centralindia)."
}

#####################################
# Network Security Group Variables
#####################################

variable "sg_name" {
  type        = string
  description = "Name of the Network Security Group (NSG) to control inbound and outbound traffic."
}

#####################################
# Virtual Network (VNet) Variables
#####################################

variable "vnet_name" {
  type        = string
  description = "Name of the Azure Virtual Network (VNet)."
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
  description = "Address prefixes for the subnet in CIDR format (e.g., [\"10.0.1.0/24\"])."
}

#####################################
# Tagging Variables
#####################################

variable "vnet_tags" {
  type        = string
  description = "Tags to associate with the Virtual Network for resource organization and cost management."
}
