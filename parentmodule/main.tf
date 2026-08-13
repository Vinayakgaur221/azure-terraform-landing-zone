module "rgprod" {
  source ="../childmodule/azurerm_resourcegrp"
  test1 = var.prod1
}

module "strprod" {
  depends_on = [ module.rgprod ]
  source = "../childmodule/azurerm_storageaccount"
  strg = var.prod5
}

module "vnetprod" {
  depends_on = [ module.rgprod ]
  source ="../childmodule/azurerm_vnet"
   test2 = var.prod2
}

module "subnetprod" {
  depends_on = [ module.vnetprod ]
  source ="../childmodule/azurerm_subnet"
  test3 = var.prod3
}

module "vmprod" {
  depends_on = [ module.subnetprod ]
  source ="../childmodule/azurerm_vm"
  test4 = var.prod4
}

module "bastprod" {
  depends_on = [ module.subnetprod ]
  source ="../childmodule/azurerm_bastion"
  basti = var.prod4
}









