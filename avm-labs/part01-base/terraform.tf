terraform {
  required_version = "~> 1.7"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5"
    }
  }
  /*
  backend "azurerm" {
    resource_group_name  = "platform-rg"
    storage_account_name = "saplatterraformstate"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
  */
}

provider "azurerm" {
  use_oidc = true
  features {}
}

