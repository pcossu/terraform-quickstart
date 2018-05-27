# Create a resource group if it doesnt exist
resource "azurerm_resource_group" "prd" {
    name     = "${var.resource_group_name}"
    location = "${var.location}"
    tags     = "${var.tags}"
}