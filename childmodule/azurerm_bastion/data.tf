data "azurerm_subnet" "bastion_subnet" {
  for_each             = var.basti
  name                 = "AzureBastionSubnet"
  virtual_network_name = "sysnetwork"
  resource_group_name  = "loan-prod"
}

