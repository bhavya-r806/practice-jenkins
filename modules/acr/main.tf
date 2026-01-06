resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = azurerm_resource_group.rd.name
  location            = var.acr_location
  sku                 = "Premium"
  admin_enabled       = false

  georeplications {
    location                = "East US"
    zone_redundancy_enabled = true
    tags                    = var.acr_tags
  }

  georeplications {
    location                = var.acr_location
    zone_redundancy_enabled = true
    tags                    = {}
  }
}
