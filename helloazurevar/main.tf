# This is the main config file.
# Terraform consolidate all the .tf files in this directory
# main.tf is the convention for the main parts of the config

# -- moved the provider version contstraints to versions.tf

# Now let's add a provider delaration for azurerm
provider "azurerm" {
    #the features block is required for optional resource config
    features {}
}

provider "random" {}

# Let's use an existing resoure group. 
# The "data" blocks are for referencing existing resources
data "azurerm_resource_group" "demo-res-group"{
    name = "demo-uk-rg"
}

# Let's output the above resource group's info
output "rgname" {
  value = data.azurerm_resource_group.demo-res-group
}

resource "random_string" "storage-account-name-suffix"{
  length = 4
  #we don't want any special characters
  special = false
  #all lower case
  upper = false
}

output "storage-account-name-suffix" {
  value = random_string.storage-account-name-suffix.result
}

# Let's create a local variable for final the account name
# The storage acct name is a concat of prefix and suffix
locals {
  finalname = format(
    "%s%s",
    var.storage-account-name-prefix,
    random_string.storage-account-name-suffix.result
  )
}


# Creating a new storage account
resource "azurerm_storage_account" "myfirstaccount"{
    name = local.finalname
    resource_group_name = data.azurerm_resource_group.demo-res-group.name
    location = data.azurerm_resource_group.demo-res-group.location
    account_tier = "Standard"
    account_replication_type = "LRS"
}

