#ACR Init

resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = var.rg_resource
  location            = var.location_resource
  sku                 = var.acr_sku
  admin_enabled       = var.acr_admin
}

#ACR End