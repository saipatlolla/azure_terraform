provider "azurerm" {
    client_id = "7dc74c5c-a4b3-4f50-a5b0-8564baee0d71"
    subscription_id = "31fb07b4-8a91-44ca-b3c7-e5b721047b18"
    tenant_id = "e7a459c7-45e9-4de2-b0e2-e5fdcb0351dd"
    client_secret = "dae23714-4184-46f8-a9c4-99d0a5e68450"
}

resource "azurerm_resource_group" "test" {
    name = "testrsgroup"
    location = "Central US"    
} 







