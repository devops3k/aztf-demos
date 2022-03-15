variable "resource_group_name" {
    description = "Name of the resource group"
    type = string
}

variable "hostname"{
    description = "VM's host name"
    type = string
}

variable "location" {
    description = "Location of the resources"
    type = string
}

variable "subnet_id" {
    description = "ID of the subnet"
    type = string
}

variable "vmsize" {
    description = "Size of VM core"
    type = string
    default = "Standard_DS2_v2"
}
