resource "azurerm_public_ip" "web" {
  name  = "web_1"
  location = "${azurerm_resource_group.test.location}"
  resource_group_name     = "${azurerm_resource_group.test.name}"
  allocation_method       = "Dynamic"

resource "azurerm_network_security_group" "web" {
  name                = "testsgp"
  location            = "${azurerm_resource_group.test.location}"
  resource_group_name = "${azurerm_resource_group.test.name}"

  security_rule {
    name                       = "testing1"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    environment = "Production"
  }
}

resource "azurerm_network_interface" "webnic" {
  name                = "webnic_1"
  location            = "${azurerm_resource_group.test.location}"
  resource_group_name = "${azurerm_resource_group.test.name}"
  network_security_group_id = "${azurerm_network_security_group.web.id}"

  ip_configuration {
    name    = "webnic_ipconf"
    subnet_id  = "${azurerm_virtual_network.testVNG.subnet.id[0]}"
    private_ip_address_allocation = "Dynamic"
  }

} 

