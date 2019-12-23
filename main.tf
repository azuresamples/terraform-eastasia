variable "subscription_id" {
}

variable "client_id" {
}

variable "client_secret" {
}

variable "tenant_id" {
}

provider "azurerm" {
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

data "azurerm_resource_group" "test" {
  name = "suga-eastasia-rsg"
}

data "azurerm_storage_account" "test" {
  name = "sugaeastasiarsgdiag"
  resource_group_name = "suga-eastasia-rsg"
}

data "azurerm_virtual_network" "test" {
  name = "suga-eastasia-vnet"
  resource_group_name = "suga-eastasia-rsg"
}

data "azurerm_subnet" "test" {
  name                 = "default"
  resource_group_name  = "suga-eastasia-rsg"
  virtual_network_name = "${azurerm_virtual_network.test.name}"
}
