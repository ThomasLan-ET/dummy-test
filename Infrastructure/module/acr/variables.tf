
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

variable "acr_name" {
  description = "Name Azure Container Registry"
  default = ""
  type = string
  # validation {
  #   condition     = regex("^.*-.*$")
  #   error_message = "Contiene caracteres especiales"
  # }
}

variable "acr_sku" {
  description = "SKU Azure Container Registry"
  default = "Basic"
  type = string
}

variable "acr_admin" {
  description = "Admin for Azure Container Registry"
  default = true
  type = bool
}