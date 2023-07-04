<!-- BEGIN_TF_DOCS -->
 # Azure Firewall
[![Changelog](https://img.shields.io/badge/changelog-release-green.svg)](https://github.com/sironite/terraform-azurerm-firewall/releases/latest) [![Notice](https://img.shields.io/badge/notice-copyright-yellow.svg)](NOTICE) [![Apache V2 License](https://img.shields.io/badge/license-Apache%20V2-orange.svg)](LICENSE) [![TF Registry](https://img.shields.io/badge/terraform-registry-blue.svg)](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/firewall#private_ip_address)

# Usage - Module

## Azure Firewall

```hcl
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
```

## Providers

| Name | Version |
|------|---------|
| azurerm | >=2.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_firewall.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/firewall) | resource |

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| firewall\_name | The name of the firewall. | `string` | yes |
| location | The location in which to create the firewall. | `string` | yes |
| resource\_group\_name | The name of the resource group in which to create the firewall. | `string` | yes |
| dns\_servers | The list of DNS servers to use for the firewall. | `list(string)` | no |
| enable\_ip\_configuration | Whether to enable IP configuration for the firewall. | `bool` | no |
| enable\_management\_ip\_configuration | Whether to enable management IP configuration for the firewall. | `bool` | no |
| enable\_virtual\_hub | Whether to enable virtual hub for the firewall. | `bool` | no |
| firewall\_policy\_id | The ID of the firewall policy to associate with the firewall. | `string` | no |
| ip\_configuration\_name | The name of the IP configuration. | `string` | no |
| ip\_configuration\_public\_ip\_address\_id | The ID of the public IP address to associate with the IP configuration. | `string` | no |
| ip\_configuration\_subnet\_id | The ID of the subnet to associate with the IP configuration. | `string` | no |
| management\_ip\_configuration\_name | The name of the management IP configuration. | `string` | no |
| management\_ip\_configuration\_public\_ip\_address\_id | The ID of the public IP address to associate with the management IP configuration. | `string` | no |
| management\_ip\_configuration\_subnet\_id | The ID of the subnet to associate with the management IP configuration. | `string` | no |
| private\_ip\_ranges | The list of private IP ranges to use for the firewall. | `list(string)` | no |
| sku\_name | The name of the firewall SKU. | `string` | no |
| sku\_tier | The tier of the firewall SKU. | `string` | no |
| tags | The tags to associate with the firewall. | `map(string)` | no |
| threat\_intel\_mode | The threat intelligence mode to use for the firewall. | `string` | no |
| virtual\_hub\_id | The ID of the virtual hub to associate with the firewall. | `string` | no |
| virtual\_hub\_public\_ip\_count | The number of public IP addresses to use for the virtual hub. | `number` | no |

## Outputs

| Name | Description |
|------|-------------|
| firewall\_id | n/a |
| firewall\_name | n/a |
| firewall\_public\_ip\_address | n/a |
| firewall\_virtual\_hub\_priavte\_ip\_address | n/a |

## Related documentation
<!-- END_TF_DOCS -->