variable "subscription_id" { type = string }
variable "tenant_id" { type = string }
variable "location" { type = string }
variable "env" { type = string }

variable "tags" {
  type = map(string)
  default = {
    subscription_id = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
    tenant_id       = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
    location        = "eastus"
    env             = "Primary"
    owner           = "team-infra"
    project         = "hub-spoke"
  }
}
