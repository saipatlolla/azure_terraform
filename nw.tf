resource "azurerm_virtual_network" "testVNG" {
    name = "testvnetwork"
    resource_group_name = "${azurerm_resource_group.test.name}"
    address_space = ["10.10.0.0/16"]
    location = "${azurerm_resource_group.test.location}"

subnet {
    name = "dev"
    address_prefix = "10.10.1.0/24"
}

subnet {
    name = "qa"
    address_prefix = "10.10.2.0/24"
}

subnet {
    name = "Prod"
    address_prefix = "10.10.3.0/24"
}

}