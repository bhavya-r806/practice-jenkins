variable "cluster_name" {
  type        = string
  description = "Name of the AKS cluster"
}

variable "cluster_dns_prefix" {
  type        = string
  description = "DNS prefix for AKS"
}

variable "resource_group_name" {
  type        = string
  description = "Resource Group name"
}

variable "rg_location" {
  type        = string
  description = "Azure region"
}

variable "node_pool_name" {
  type        = string
  description = "Default node pool name"
}

variable "node_pool_count" {
  type        = number
  description = "Number of nodes"
}

variable "cluster_vm_size" {
  type        = string
  description = "VM size for nodes"
}

variable "cluster_tags" {
  type        = string
  description = "Environment tag"
}
