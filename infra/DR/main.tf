resource "azurerm_resource_group" "test" {
  name     = "rg-test-${var.env}"
  location = var.location
  tags     = var.tags
}
 
resource "azurerm_virtual_network" "test" {
  name                = "vnet-test-${var.env}"
  location            = azurerm_resource_group.test.location
  resource_group_name = azurerm_resource_group.test.name
  address_space       = ["10.10.0.0/16"]
}