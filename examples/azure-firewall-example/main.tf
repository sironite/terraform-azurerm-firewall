module "firewall" {
  source  = "sironite/firewall/azurerm"
  version = "X.X.X"

  name                = "example-firewall"
  resource_group_name = "example-resource-group"
  location            = "westeurope"

  sku_name = "AZFW_VNet"
  sku_tier = "Standard"

  firewall_policy_id                 = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-resource-group/providers/Microsoft.Network/firewallPolicies/example-firewall-policy"
  enable_ip_configuration            = false
  enable_management_ip_configuration = false
  enable_virtual_hub                 = false

  tags = {
    environment = "dev"

  }

}