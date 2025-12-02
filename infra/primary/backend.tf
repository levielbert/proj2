terraform {
  required_version = ">= 1.4.0"
 
  backend "azurerm" {
    resource_group_name  = "infra-state-rg"
    storage_account_name = "tfstate<uniquesuffix>"
    container_name       = "tfstate"
    key                  = "primary.terraform.tfstate"   # for dr use dr.terraform.tfstate
  }
}
