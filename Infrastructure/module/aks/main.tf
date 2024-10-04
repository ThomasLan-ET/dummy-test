#AKS init

resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = var.aks_name
  location            = var.location_resource
  resource_group_name = var.rg_resource
  dns_prefix          = var.aks_dns
  kubernetes_version  = var.k8s_version
  identity {
    type = "SystemAssigned"
  }
  default_node_pool {
    name            = var.aks_pool_name
    node_count      = var.aks_pool_count
    vm_size         = var.aks_pool_vm_sku
    os_disk_size_gb = var.aks_pool_vm_storage

  }
}

#AKS done