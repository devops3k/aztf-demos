output "vm_host_name"{
    description = "Name of the VM"
    value = azurerm_linux_virtual_machine.vm.name
}