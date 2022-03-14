# Let's add a terraform block with provider version constraints
# adding the Hashicorp Random provider
terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~>2.99.0"
    }
    random = {
      source = "hashicorp/random"
      version = "~>3.1.0"
    }
  }
}
