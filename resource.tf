resource "azurerm_resource_group" "handsonterra130" {
    name     = "handsonterra130"
    location = "East US"

}
 
resource "azurerm_storage_account" "terrahandson130" {
    name                     = "terrahandson130"
    resource_group_name      = azurerm_resource_group.handsonterra130.name
    location                 = azurerm_resource_group.handsonterra130.location
    account_tier             = "Standard"
    account_replication_type = "LRS"
}
 
resource "azurerm_storage_container" "sacontainer130" {
    name                  = "sacontainer130"
    storage_account_name  = azurerm_storage_account.terrahandson130.name
    container_access_type = "private"

}
