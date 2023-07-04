variable "firewall_name" {
  type        = string
  description = "The name of the firewall."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the firewall."
}

variable "location" {
  type        = string
  description = "The location in which to create the firewall."
}

variable "sku_name" {
  type        = string
  description = "The name of the firewall SKU."
  default     = "AZFW_Hub"
}

variable "sku_tier" {
  type        = string
  description = "The tier of the firewall SKU."
  default     = "Standard"
}

variable "firewall_policy_id" {
  type        = string
  description = "The ID of the firewall policy to associate with the firewall."
  default     = null
}

variable "dns_servers" {
  type        = list(string)
  description = "The list of DNS servers to use for the firewall."
  default     = []
}

variable "private_ip_ranges" {
  type        = list(string)
  description = "The list of private IP ranges to use for the firewall."
  default     = []
}

variable "threat_intel_mode" {
  type        = string
  description = "The threat intelligence mode to use for the firewall."
  default     = "Alert"
}

variable "enable_ip_configuration" {
  type        = bool
  description = "Whether to enable IP configuration for the firewall."
  default     = false
}

variable "ip_configuration_name" {
  type        = string
  description = "The name of the IP configuration."
  default     = null
}

variable "ip_configuration_subnet_id" {
  type        = string
  description = "The ID of the subnet to associate with the IP configuration."
  default     = null
}

variable "ip_configuration_public_ip_address_id" {
  type        = string
  description = "The ID of the public IP address to associate with the IP configuration."
  default     = null
}

variable "enable_management_ip_configuration" {
  type        = bool
  description = "Whether to enable management IP configuration for the firewall."
  default     = false
}

variable "management_ip_configuration_name" {
  type        = string
  description = "The name of the management IP configuration."
  default     = null
}

variable "management_ip_configuration_subnet_id" {
  type        = string
  description = "The ID of the subnet to associate with the management IP configuration."
  default     = null
}

variable "management_ip_configuration_public_ip_address_id" {
  type        = string
  description = "The ID of the public IP address to associate with the management IP configuration."
  default     = null
}

variable "enable_virtual_hub" {
  type        = bool
  description = "Whether to enable virtual hub for the firewall."
  default     = false
}

variable "virtual_hub_id" {
  type        = string
  description = "The ID of the virtual hub to associate with the firewall."
  default     = null
}

variable "virtual_hub_public_ip_count" {
  type        = number
  description = "The number of public IP addresses to use for the virtual hub."
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "The tags to associate with the firewall."
  default     = {}
}