output "rg_out" {
  value = azurerm_resource_group.test.name
}

output "sa_out" {
 value = azure_storage_account.sa.name 
}

output "pip_out" {
  value = azurerm_public_ip.test.name
}