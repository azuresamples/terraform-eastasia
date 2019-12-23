variable "admin_user" {
}

variable "admin_password" {
}

variable "subscription_id" {
}

variable "client_id" {
}

variable "client_secret" {
}

variable "tenant_id" {
}

variable "start_ip_address" {
}

variable "end_ip_address" {
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
  name                = "sugaeastasiarsgdiag"
}
