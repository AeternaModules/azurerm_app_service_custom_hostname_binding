output "app_service_custom_hostname_bindings_id" {
  description = "Map of id values across all app_service_custom_hostname_bindings, keyed the same as var.app_service_custom_hostname_bindings"
  value       = { for k, v in azurerm_app_service_custom_hostname_binding.app_service_custom_hostname_bindings : k => v.id }
}
output "app_service_custom_hostname_bindings_app_service_name" {
  description = "Map of app_service_name values across all app_service_custom_hostname_bindings, keyed the same as var.app_service_custom_hostname_bindings"
  value       = { for k, v in azurerm_app_service_custom_hostname_binding.app_service_custom_hostname_bindings : k => v.app_service_name }
}
output "app_service_custom_hostname_bindings_hostname" {
  description = "Map of hostname values across all app_service_custom_hostname_bindings, keyed the same as var.app_service_custom_hostname_bindings"
  value       = { for k, v in azurerm_app_service_custom_hostname_binding.app_service_custom_hostname_bindings : k => v.hostname }
}
output "app_service_custom_hostname_bindings_resource_group_name" {
  description = "Map of resource_group_name values across all app_service_custom_hostname_bindings, keyed the same as var.app_service_custom_hostname_bindings"
  value       = { for k, v in azurerm_app_service_custom_hostname_binding.app_service_custom_hostname_bindings : k => v.resource_group_name }
}
output "app_service_custom_hostname_bindings_ssl_state" {
  description = "Map of ssl_state values across all app_service_custom_hostname_bindings, keyed the same as var.app_service_custom_hostname_bindings"
  value       = { for k, v in azurerm_app_service_custom_hostname_binding.app_service_custom_hostname_bindings : k => v.ssl_state }
}
output "app_service_custom_hostname_bindings_thumbprint" {
  description = "Map of thumbprint values across all app_service_custom_hostname_bindings, keyed the same as var.app_service_custom_hostname_bindings"
  value       = { for k, v in azurerm_app_service_custom_hostname_binding.app_service_custom_hostname_bindings : k => v.thumbprint }
}
output "app_service_custom_hostname_bindings_virtual_ip" {
  description = "Map of virtual_ip values across all app_service_custom_hostname_bindings, keyed the same as var.app_service_custom_hostname_bindings"
  value       = { for k, v in azurerm_app_service_custom_hostname_binding.app_service_custom_hostname_bindings : k => v.virtual_ip }
}

