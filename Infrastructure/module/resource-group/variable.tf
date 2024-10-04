
variable "rg_name" {
  description = "Name Resource Group"
  default = ""
  type = string
}

variable "rg_location" {
  description = "Location Resource Group"
  default = ""
  type = string
}

variable "rg_tags" {
  description = "Tag Resource Group"
  default = null
  type= map(string)
}