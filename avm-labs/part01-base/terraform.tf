terraform {
  required_version = "~> 1.7"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.105"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5"
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
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false # This is to handle MCAPS or other policy driven resource creation.
    }
  }
  # Use Managed Identity for authentication
  use_msi = true
}
