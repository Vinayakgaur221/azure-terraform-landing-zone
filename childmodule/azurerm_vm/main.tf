resource "azurerm_network_interface" "nic33" {
    for_each = var.test4
  name                = each.value.nic_name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.datsubb[each.key].id
    private_ip_address_allocation = "Dynamic"
  }
}





resource "azurerm_linux_virtual_machine" "main" {

  for_each = var.test4

  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  size                = each.value.vm_size
  admin_username = each.value.admin_username
  disable_password_authentication = false
  admin_password                  = each.value.admin_password

  network_interface_ids = [
     azurerm_network_interface.nic33[each.key].id 
  ]

  os_disk {
    caching              = each.value.caching
    storage_account_type = each.value.managed_disk_type
  }

  source_image_reference {
    publisher = each.value.publisher
    offer     = each.value.offer
    sku       = each.value.sku
    version   = each.value.version
  }

}







