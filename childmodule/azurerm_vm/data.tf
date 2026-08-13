data "azurerm_subnet" "datsubb" {
  for_each = var.test4
  name                 = "loannsubnet12"
  virtual_network_name = "sysnetwork"
  resource_group_name  = "loan-prod"
}













