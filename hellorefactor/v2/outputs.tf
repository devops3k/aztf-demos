output "web_host_name"{
    description = "Name of the web host"
    value = module.webserver.vm_host_name
}

output "db_host_name"{
    description = "Name of the db host"
    value = module.dbserver.vm_host_name
}

output "vnet_id"{
    description = "VNet ID"
    value = module.simplenetwork.vnet_id
}

output "subnet_id"{
    description = "Subnet ID"
    value = module.simplenetwork.subnet_id
}