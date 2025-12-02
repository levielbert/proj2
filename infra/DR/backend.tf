terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tfstate"
    storage_account_name = "devopsterraformstate01"
    container_name       = "tfstate"
    key                  = "primary.terraform.tfstate"
  }
}
