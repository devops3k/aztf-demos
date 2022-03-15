
# Provider versioning constraints
terraform {
    required_providers {
        azuread = {
        source  = "hashicorp/azuread"
        version = "2.19.1"
        }
        azurerm = {
        source = "hashicorp/azurerm"
        version = "2.99.0"
        }
    }
    required_version = "~> 1.1.7"
}
