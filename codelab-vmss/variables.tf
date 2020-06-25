variable "azure_subscription_id" {}
variable "azure_client_id" {}
variable "azure_client_secret" {}
variable "azure_tenant_id" {}

# Configure the Azure Provider
provider "azurerm" {
  features {
  }
  subscription_id = var.azure_subscription_id
  client_id       = var.azure_client_id       
  client_secret   = var.azure_client_secret   
  tenant_id       = var.azure_tenant_id       
}

variable "location" {
  description = "The location where resources will be created"
  default = "West US"
}

variable "tags" {
  description = "A map of the tags to use for the resources that are deployed"
  type        = map

  default = {
    env = "dev"
  }
}

variable "resource_group_name" {
  description = "The name of the resource group in which the resources will be created"
  default     = "myResourceGroup05"
}

variable "application_port" {
  description = "The port that you want to expose to the load balancer"
  default     = 80
}

variable "admin_user" {
  description = "User name to use as the admin account on the VMs that will be part of the VM Scale Set"
  default     = "azureuser"
}

variable "admin_password" {
  description = "Default password for admin account"
}
