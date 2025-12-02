output "rg_hub_name" {
  value       = try(module.rg_hub.name, azurerm_resource_group.test.name)
  description = "Hub resource group name"
}
 
output "hub_vnet_id" {
  value       = try(module.hub_vnet.vnet_id, azurerm_virtual_network.test.id)
  description = "Hub VNet ID"
}
