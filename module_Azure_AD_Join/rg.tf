# terraform azure create resource group
resource "azurerm_resource_group" "rg_avd" {
  name     = "${var.prefix}-rg"
  location = var.location
  tags = {
    infra_avd = var.prefix
  }
}