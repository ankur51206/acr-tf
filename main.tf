provider "azurerm" {
  features {}
}

resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = var.acr_resource_group_name
  location            = var.acr_location
  sku                 = var.acr_sku
  admin_enabled       = var.acr_admin_enabled
  georeplication_locations     = var.acr_georeplications
  zone_redundancy_enabled = var.acr_zone_redundancy_enabled
  quarantine_policy_enabled = var.acr_quarantine_policy_enabled

  identity {
    type = "SystemAssigned"
  }

retention_policy {
  enabled = var.acr_images_retention_enabled
  days    = var.acr_images_retention_days

}


}