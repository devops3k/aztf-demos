# This is the main config file.
# Terraform consolidate all the .tf files in this directory
# main.tf is the convention for the main parts of the config

# Let's add a terraform block with provider version constraints
terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~>2.99.0"
    }
  }
}

# Now let's add a provider delaration for azurerm
provider "azurerm" {
    #the features block is required for optional resource config
    features {}
}

# Let's use an existing resoure group. 
# The "data" blocks are for referencing existing resources
data "azurerm_resource_group" "demo-res-group"{
    name = "demo-uk-rg"
}

# Let's output the above resource group's info
output "rgname" {
  value = data.azurerm_resource_group.demo-res-group
}

# Creating a new storage account
resource "azurerm_storage_account" "myfirstaccount"{
    name = "aztfjazzwall22"
    resource_group_name = data.azurerm_resource_group.demo-res-group.name
    location = data.azurerm_resource_group.demo-res-group.location
    account_tier = "Standard"
    account_replication_type = "LRS"
}

