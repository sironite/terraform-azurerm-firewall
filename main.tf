resource "azurerm_firewall" "this" {
  name                = var.firewall_name
  resource_group_name = var.resource_group_name
  location            = var.location

  sku_name = var.sku_name
  sku_tier = var.sku_tier

  firewall_policy_id = var.firewall_policy_id
  dns_servers        = var.dns_servers
  private_ip_ranges  = var.private_ip_ranges
  threat_intel_mode  = var.threat_intel_mode

  dynamic "ip_configuration" {
    for_each = var.enable_ip_configuration != false ? [1] : []
    content {
      name                 = var.ip_configuration_name
      subnet_id            = var.ip_configuration_subnet_id
      public_ip_address_id = var.ip_configuration_public_ip_address_id
    }
  }

  dynamic "management_ip_configuration" {
    for_each = var.enable_management_ip_configuration != false ? [1] : []
    content {
      name                 = var.management_ip_configuration_name
      subnet_id            = var.management_ip_configuration_subnet_id
      public_ip_address_id = var.management_ip_configuration_public_ip_address_id
    }
  }

  dynamic "virtual_hub" {
    for_each = var.enable_virtual_hub != false ? [1] : []
    content {
      virtual_hub_id  = var.virtual_hub_id
      public_ip_count = var.virtual_hub_public_ip_count
    }
  }

  tags = var.tags
}
