
variable "resource_group_location" {
  type        = string
  description = "Location name of the resource group the postgres server will be associated to"
}

variable "frontend_vnet" {
  description = "Frontend Virtual Network"
}

variable "backend_vnet" {
  description = "Frontend Virtual Network"
}