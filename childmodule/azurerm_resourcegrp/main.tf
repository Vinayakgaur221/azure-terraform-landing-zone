resource "azurerm_resource_group" "Rg1" {
    for_each = var.test1
  name     = each.value.name
  location = each.value.location
}