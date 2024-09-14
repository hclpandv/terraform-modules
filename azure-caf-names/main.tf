terraform {
  required_version = ">1.3.1"
  required_providers {
    azurerm = ">= 3.33.0"
  }
}

# ref: https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-naming
locals {
  
}

output "name" {
  value = {
    vnet = "vnet-${var.application_name}-${var.environment}-${var.region_code}-${var.instance_number}"
    resource_group = "rg-${var.application_name}-${var.environment}-${var.region_code}-${var.instance_number}"
  }
}