terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
     
  }
    # backend "azurerm" {
    # resource_group_name  = "loan-prod"
    # storage_account_name = "storageloani12"
    # container_name       = "dataloan"
    # key                  = "prod.terraform.tfstate"
    # }
}


provider "azurerm" {
    features {}
    subscription_id = "2dd57896-7866-4df4-8c9e-6830338bdf29"
}