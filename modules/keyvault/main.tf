resource "azurerm_key_vault" "key_vault" {

  name                        = var.key_vault_name

  location                    = var.key_vault_location

  resource_group_name         = azurerm_resource_group.rg.name

  tenant_id                   = var.tenant_id

  sku_name                    = "standard"

  soft_delete_retention_days = 7
 
  access_policy {

    tenant_id = var.tenant_id

    object_id = var.admin_object_id

    secret_permissions = [

      "Get", "List", "Set", "Delete"

    ]

  }

}
 