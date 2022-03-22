locals {
  prefix = var.backend_vnet.resource_group_name
}

resource "azurerm_virtual_network_peering" "frontend" {
  name                         = "${local.prefix}-frontend-peering"
  resource_group_name          = var.frontend_vnet.resource_group_name
  virtual_network_name         = var.frontend_vnet.name
  remote_virtual_network_id    = var.backend_vnet.id
  allow_virtual_network_access = true
  allow_forwarded_traffic      = true
}

resource "azurerm_virtual_network_peering" "backend" {
  name                         = "${local.prefix}-backend-peering"
  resource_group_name          = var.backend_vnet.resource_group_name
  virtual_network_name         = var.backend_vnet.name
  remote_virtual_network_id    = var.frontend_vnet.id
  allow_virtual_network_access = true
  allow_forwarded_traffic      = true
}