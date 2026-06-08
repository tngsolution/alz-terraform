terraform {
  required_version = ">= 1.12, < 2.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.76.0"
    }
    azapi = {
      source  = "azure/azapi"
      version = "~> 2.0"
    }
    alz = {
      source  = "azure/alz"
      version = "~> 0.21"
    }
  }
}
