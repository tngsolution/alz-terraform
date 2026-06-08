output "subscription_id" {
  description = "Effective subscription id used (from variable or current client config)"
  value       = local.effective_subscription_id
}