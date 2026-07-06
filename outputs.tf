output "app_service_custom_hostname_bindings" {
  description = "All app_service_custom_hostname_binding resources"
  value       = azurerm_app_service_custom_hostname_binding.app_service_custom_hostname_bindings
}
output "app_service_custom_hostname_bindings_app_service_name" {
  description = "List of app_service_name values across all app_service_custom_hostname_bindings"
  value       = [for k, v in azurerm_app_service_custom_hostname_binding.app_service_custom_hostname_bindings : v.app_service_name]
}
output "app_service_custom_hostname_bindings_hostname" {
  description = "List of hostname values across all app_service_custom_hostname_bindings"
  value       = [for k, v in azurerm_app_service_custom_hostname_binding.app_service_custom_hostname_bindings : v.hostname]
}
output "app_service_custom_hostname_bindings_resource_group_name" {
  description = "List of resource_group_name values across all app_service_custom_hostname_bindings"
  value       = [for k, v in azurerm_app_service_custom_hostname_binding.app_service_custom_hostname_bindings : v.resource_group_name]
}
output "app_service_custom_hostname_bindings_ssl_state" {
  description = "List of ssl_state values across all app_service_custom_hostname_bindings"
  value       = [for k, v in azurerm_app_service_custom_hostname_binding.app_service_custom_hostname_bindings : v.ssl_state]
}
output "app_service_custom_hostname_bindings_thumbprint" {
  description = "List of thumbprint values across all app_service_custom_hostname_bindings"
  value       = [for k, v in azurerm_app_service_custom_hostname_binding.app_service_custom_hostname_bindings : v.thumbprint]
}
output "app_service_custom_hostname_bindings_virtual_ip" {
  description = "List of virtual_ip values across all app_service_custom_hostname_bindings"
  value       = [for k, v in azurerm_app_service_custom_hostname_binding.app_service_custom_hostname_bindings : v.virtual_ip]
}

