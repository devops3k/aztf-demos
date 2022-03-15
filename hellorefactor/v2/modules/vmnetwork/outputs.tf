output subnet_id{
    description = "Subnet ID"
    value = azurerm_subnet.subnet.id
}

output vnet_id{
    description = "VNet ID"
    value = azurerm_virtual_network.network.id
}