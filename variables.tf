variable "prefix" {
  description = "Prefix used for resources"
  type        = string
  default     = "tngs"
}

variable "architecture_name" {
  description = "Name of the landing zone architecture definition (matches your *.alz_architecture_definition.json/yaml)"
  type        = string
  default     = "alz"
}

variable "location" {
  description = "Azure location"
  type        = string
  default     = "francecentral"
}

variable "tenant_id" {
  type        = string
  description = "Tenant Root Group ID"
}

variable "tags" {
  description = "Tags applied to resources"
  type        = map(string)
  default = {
    environment = "poc"
    owner       = "tngs"
    project     = "alz-tngs"
    managed_by  = "terraform"
  }
}

variable "subscription_id" {
  description = "Azure subscription ID. If empty, the ARM_SUBSCRIPTION_ID environment variable will be used."
  type        = string
  default     = ""
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "landing_zone_name" {
  description = "Landing zone name / identifier"
  type        = string
  default     = "tngs-lz-dev"
}

variable "management_resource_group" {
  description = "Name of the management resource group"
  type        = string
  default     = "rg-tngs-lz-mgmt"
}

variable "log_analytics_workspace_name" {
  description = "Log Analytics workspace name"
  type        = string
  default     = "law-tngs-lz"
}

variable "enable_monitoring" {
  description = "Enable monitoring and diagnostics"
  type        = bool
  default     = true
}

variable "address_space" {
  description = "Primary address space for the virtual network"
  type        = list(string)
  default     = ["10.10.0.0/16"]
}
