output "resource_group_name" {
  value = azurerm_resource_group.demo_rg.name
}

output "vnet_name" {
  value = azurerm_virtual_network.demo_vnet.name
}

output "subnet_name" {
  value = azurerm_subnet.demo_subnet.name
}

output "public_ip" {
  value = azurerm_public_ip.demo_pip.ip_address
  description = "Public IP of the demo VM"
}
