provider "azurerm" {
    client_id = ""
    subscription_id = ""
    tenant_id = ""
    client_secret = ""
}

resource "azurerm_resource_group" "test" {
    name = "testrsgroup"
    location = "Central US"    
} 







