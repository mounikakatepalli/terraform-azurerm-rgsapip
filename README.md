# terraform-azurerm-rgsapip

module "sa" {
source = //terraform-azurerm-rgsapip
saname="saderty"
rgname="modrg"
loc="east us"
act="Standard"
rt="GRS"
}