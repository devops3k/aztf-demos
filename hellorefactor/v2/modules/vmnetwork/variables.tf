variable "resource_group_name" {
    description = "Name of the resource group"
    type = string
}

variable "location" {
    description = "Location of the resources"
    type = string
}

variable "vnet_name" {
    description = "Name of VNet"
    type = string
}

variable "subnet_name" {
    description = "Name of Subnet"
    type = string
}

variable "nsg_name" {
    description = "Name of NSG"
    type = string
}