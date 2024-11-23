terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  backend "azurerm" {
      resource_group_name  = "platform-rg"
      storage_account_name = "saplatterraformstate"
      container_name       = "terraform-state"
      key                  = "terraform.tfstate"
  }

}

provider "azurerm" {
  features {}
}

