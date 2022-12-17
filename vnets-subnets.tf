# Create a Virtual Network

resource "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network["name"]
  resource_group_name = azurerm_resource_group.rgs["Dev-RG"].name
  location            = azurerm_resource_group.rgs["Dev-RG"].location
  address_space       = [var.virtual_network["address_range"]]
  tags                = var.tags
}

# Create multiple Subnets inside the virtual network

resource "azurerm_subnet" "subnets" {
  for_each             = var.subnet
  name                 = each.key
  resource_group_name  = azurerm_resource_group.rgs["Dev-RG"].name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [each.value]
}