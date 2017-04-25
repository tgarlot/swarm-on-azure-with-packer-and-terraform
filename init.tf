resource "azurerm_resource_group" "swarm" {
  name     = "azswarmrg"
  location = "westeurope"
}

resource "azurerm_storage_account" "swarm" {
  name                = "azswarmsa"
  resource_group_name = "${azurerm_resource_group.swarm.name}"
  location            = "westeurope"
  account_type        = "Standard_LRS"
}
