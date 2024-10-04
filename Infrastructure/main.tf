terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.3.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.4.1"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-sandbox"
    storage_account_name = "saterraformbe"
    container_name       = "remote-be-tf"
    key                  = "tf.sandbox.terraform.state"
  }
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

module "rg" {
  source= "./module/resource-group"
  rg_name = "sandbox-aks"
  rg_location = "East US 2"
  rg_tags = {
    Owner = "Thomas"
    Env = "SandBox"
  }
}

module "acr" {
  source = "./module/acr"
  rg_resource = module.rg.rg_name
  location_resource = module.rg.rg_location
  acr_name = "acrsandboxet01"

  tags_resource ={
    Owner = "Thomas"
    Env = "SandBox"
  }
}

module "aks" {
  source = "./module/aks"
  rg_resource = module.rg.rg_name
  location_resource = module.rg.rg_location
  aks_name = "aks-sandbox-01"
  aks_dns = "et-aks-sandbox"
  k8s_version = "1.29.2"

  aks_pool_count = 2
  aks_pool_name = "nodeakssb"
  aks_pool_vm_sku = "Standard_D2_v2"
  aks_pool_vm_storage = "30"
  tags_resource ={
    Owner = "Thomas"
    Env = "SandBox"
  }
}