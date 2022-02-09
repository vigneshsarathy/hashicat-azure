provider "azurerm" {
  features {}
}

module "network" {
  source              = "Azure/network/azurerm"
  resource_group_name = azurerm_resource_group.myresourcegroup.name
  address_spaces      = ["10.0.0.0/16", "10.2.0.0/16"]
  subnet_prefixes     = [var.address_space]
  subnet_names        = "${var.prefix}-subnet"
 
  tags = {
    environment = "devops"
  }

  depends_on = [azurerm_resource_group.myresourcegroup]
}