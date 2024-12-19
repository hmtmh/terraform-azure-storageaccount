# Configure the Azure provider
provider "azurerm" {
  features {}
}

# Create a Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "storage-account-rg"
  location = "eastus"
}

# Create a Storage Account
resource "azurerm_storage_account" "storage" {
  name                     = "samplestorageacct001" # Must be globally unique
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS" # Locally-redundant storage
}

# Create a Blob Container
resource "azurerm_storage_container" "blob_container" {
  name                  = "sample-container"
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "private"
}
