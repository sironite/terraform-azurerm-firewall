output "firewall_id" {
  value = azurerm_firewall.this.id
}

output "firewall_name" {
  value = azurerm_firewall.this.name
}

output "firewall_public_ip_address" {
  value = azurerm_firewall.this.ip_configuration.*.private_ip_address
}

output "firewall_virtual_hub_priavte_ip_address" {
  value = azurerm_firewall.this.virtual_hub.*.private_ip_address
}