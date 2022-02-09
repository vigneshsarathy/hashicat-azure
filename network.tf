module "network" {
  source              = "Azure/network/azurerm"
  resource_group_name = azurerm_resource_group.myresourcegroup.name
  address_spaces      = ["10.0.0.0/16", "10.2.0.0/16"]
  subnet_prefixes     = [var.address_space]
 
  tags = {
    environment = "devops"
  }

  depends_on = [azurerm_resource_group.myresourcegroup]
}