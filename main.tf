resource "azurerm_resource_group" "test" {
  name     = var.rgname
  location = var.loc
  
}


resource "azurerm_public_ip" "test" {
  name                = var.pipname
  resource_group_name = azurerm_resource_group.test.name
  location            = azurerm_resource_group.test.location
  allocation_method   = var.ac
}

 resource "random_string" "rg" {
   length = 6
   special = false
   upper = false

 }

 resource "azurerm_storage_account" "sa" {
   name = "${var.saname}${random_string.rg.result}"
   resource_group_name = azurerm_resource_group.rg1.name
   location = azurerm_storage_group.rg1.location
   account_tier = var.at
   account_replication_type =var.rt
 }
