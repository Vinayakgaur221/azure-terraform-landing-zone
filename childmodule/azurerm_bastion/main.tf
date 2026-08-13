resource "azurerm_public_ip" "bastpip" {
  for_each = var.basti
  name                = each.value.bastion_publicip
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  allocation_method   = each.value.allocation_method 
  sku                = "Standard"
}


resource "azurerm_bastion_host" "bast33" {
  for_each = var.basti
  name                = each.value.bast_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                 = "bastion-ip-config"
    subnet_id            = data.azurerm_subnet.bastion_subnet[each.key].id
    public_ip_address_id = azurerm_public_ip.bastpip[each.key].id
  }
}