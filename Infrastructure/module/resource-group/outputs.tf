output "rg_name" {
  description = "Name Resource Group"
  value = azurerm_resource_group.rg.name
}

output "rg_location" {
  description = "Location of Resource Group"
  value = azurerm_resource_group.rg.location
}