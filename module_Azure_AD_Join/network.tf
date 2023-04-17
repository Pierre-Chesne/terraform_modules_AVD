# terraform azure create virtual network
resource "azurerm_virtual_network" "vnet_avd" {
  name                = "${var.prefix}-vnet"
  address_space       = ["10.2.0.0/16"] #var.vnet_range
  location            = azurerm_resource_group.rg_avd.location
  resource_group_name = azurerm_resource_group.rg_avd.name
  tags = {
    infra_avd = var.prefix
  }
}