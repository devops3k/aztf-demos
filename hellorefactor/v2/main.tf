# Modularized, first iteration


# Provider declarations
provider "azurerm" {
  features {}
}

locals {
  hostname_web_vm     = "my-web-vm"
  hostname_db_vm      = "my-db-vm"
  location            = "eastus"
  resource_group_name = "test22"
}

resource "azurerm_resource_group" "resourcegroup" {
  name     = local.resource_group_name
  location = local.location
}

module "simplenetwork" {
  source = "./modules/vmnetwork"
  resource_group_name = azurerm_resource_group.resourcegroup.name
  location = azurerm_resource_group.resourcegroup.location
  vnet_name = "demo-vnet"
  subnet_name = "demo-subnet"
  nsg_name = "my-nsg"
}


module "webserver" {
  source = "./modules/linuxserver"
  resource_group_name = azurerm_resource_group.resourcegroup.name
  hostname = local.hostname_web_vm
  location = local.location
  subnet_id = module.simplenetwork.subnet_id
}

module "dbserver" {
  source = "./modules/linuxserver"
  resource_group_name = azurerm_resource_group.resourcegroup.name
  hostname = local.hostname_db_vm
  location = local.location
  subnet_id = module.simplenetwork.subnet_id
}
