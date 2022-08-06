terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.78.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-adolearn-dan-tfstate"
    storage_account_name = "storageaccadolearndan"
    container_name       = "tfstate"
    key                  = "uat.tfstate"
  }
}
