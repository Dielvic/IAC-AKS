#providers.tf

terraform {
  required_version = ">=1.3.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.48"
    }
  }
}

provider "azurerm" {
  features {}
}

# The configuration for the `remote` backend.
#     terraform {
#       backend "remote" {
#         # The name of your Terraform Cloud organization.
#         organization = "example-organization"
#
#         # The name of the Terraform Cloud workspace to store Terraform state files in.
#         workspaces {
#           name = "example-workspace"
#         }
#       }
#     }

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-aks-prerequis"
    storage_account_name = "stockageterraform2910"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate" # Nom du fichier état stocké
  }
}