
variable "rg_resource" {
  description = "Resource Groups Name"
  default = ""
  type = string
}

variable "location_resource" {
  description = "Location Resource"
  default = ""
  type = string
}

variable "tags_resource" {
  description = "Tags Resource"
  default = null
  type = map(string)
}

variable "aks_name" {
  description = "Name Azure Container Registry"
  default = ""
  type = string
  # validation {
  #   condition     = regex("^.*-.*$")
  #   error_message = "Contiene caracteres especiales"
  # }
}

variable "aks_dns" {
  description = "DNS for AKS Cluster"
  default = ""
  type = string
}

variable "k8s_version" {
  description = "AKS Kubernetes version"
  default     = ""
  type        = string
}



variable "aks_pool_name" {
  description = "Name of the AKS node pool"
  default     = ""
  type        = string
}

variable "aks_pool_count" {
  description = "Number of VMs in the node pool"
  default     = 1
  type        = number
}

variable "aks_pool_vm_sku" {
  description = "SKU for the VM size in the node pool"
  default     = ""
  type        = string
}

variable "aks_pool_vm_storage" {
  description = "Storage size for each VM in the node pool"
  default     = ""
  type        = string
}