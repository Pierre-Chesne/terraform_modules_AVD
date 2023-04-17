# terraform azure create log analytics workspace
resource "azurerm_log_analytics_workspace" "law_avd" {
  name                = "${var.prefix}-law"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg_avd.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
  tags = {
    infra_avd = var.prefix
  }
}
