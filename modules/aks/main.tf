resource "azurerm_kubernetes_cluster" "cluster" {
  name                = var.cluster_name
  location            = var.rg_location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.cluster_dns_prefix

  default_node_pool {
    name       = var.node_pool_name
    node_count = var.node_pool_count
    vm_size    = var.cluster_vm_size
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = var.cluster_tags
  }
}
