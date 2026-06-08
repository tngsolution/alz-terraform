provider "azurerm" {
  features {}
}

provider "azapi" {}

provider "alz" {
  library_references = [
    {
      path = "platform/alz"
      ref  = "2026.04.0"
    }
  ]
}