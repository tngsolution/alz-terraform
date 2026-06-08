# Determine the effective subscription id: use var.subscription_id if set, otherwise use current client config
locals {
  effective_subscription_id = data.azurerm_client_config.current.subscription_id
}