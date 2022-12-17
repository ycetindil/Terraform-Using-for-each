# Create multiple Resource Groups

resource "azurerm_resource_group" "rgs" {
  for_each = var.resource_group
  name     = each.key
  location = each.value
  tags     = var.tags
}