terraform {
  required_version = ">1.3.1"
  required_providers {
    azurerm = ">= 3.33.0"
  }
}

locals {
  
}

# vnet 
#
resource "azurerm_virtual_network" "main" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.vnet_cidrs

  tags = var.tags
}

#subnets
#
resource "azurerm_subnet" "subnets" {
  for_each = var.subnets

  name                 = each.value.name
  resource_group_name  = azurerm_virtual_network.main.resource_group_name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = [each.value.cidr]
}