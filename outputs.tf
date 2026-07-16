output "app_service_custom_hostname_bindings_id" {
  description = "Map of id values across all app_service_custom_hostname_bindings, keyed the same as var.app_service_custom_hostname_bindings"
  value       = { for k, v in azurerm_app_service_custom_hostname_binding.app_service_custom_hostname_bindings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "app_service_custom_hostname_bindings_app_service_name" {
  description = "Map of app_service_name values across all app_service_custom_hostname_bindings, keyed the same as var.app_service_custom_hostname_bindings"
  value       = { for k, v in azurerm_app_service_custom_hostname_binding.app_service_custom_hostname_bindings : k => v.app_service_name if v.app_service_name != null && length(v.app_service_name) > 0 }
}
output "app_service_custom_hostname_bindings_hostname" {
  description = "Map of hostname values across all app_service_custom_hostname_bindings, keyed the same as var.app_service_custom_hostname_bindings"
  value       = { for k, v in azurerm_app_service_custom_hostname_binding.app_service_custom_hostname_bindings : k => v.hostname if v.hostname != null && length(v.hostname) > 0 }
}
output "app_service_custom_hostname_bindings_resource_group_name" {
  description = "Map of resource_group_name values across all app_service_custom_hostname_bindings, keyed the same as var.app_service_custom_hostname_bindings"
  value       = { for k, v in azurerm_app_service_custom_hostname_binding.app_service_custom_hostname_bindings : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "app_service_custom_hostname_bindings_ssl_state" {
  description = "Map of ssl_state values across all app_service_custom_hostname_bindings, keyed the same as var.app_service_custom_hostname_bindings"
  value       = { for k, v in azurerm_app_service_custom_hostname_binding.app_service_custom_hostname_bindings : k => v.ssl_state if v.ssl_state != null && length(v.ssl_state) > 0 }
}
output "app_service_custom_hostname_bindings_thumbprint" {
  description = "Map of thumbprint values across all app_service_custom_hostname_bindings, keyed the same as var.app_service_custom_hostname_bindings"
  value       = { for k, v in azurerm_app_service_custom_hostname_binding.app_service_custom_hostname_bindings : k => v.thumbprint if v.thumbprint != null && length(v.thumbprint) > 0 }
}
output "app_service_custom_hostname_bindings_virtual_ip" {
  description = "Map of virtual_ip values across all app_service_custom_hostname_bindings, keyed the same as var.app_service_custom_hostname_bindings"
  value       = { for k, v in azurerm_app_service_custom_hostname_binding.app_service_custom_hostname_bindings : k => v.virtual_ip if v.virtual_ip != null && length(v.virtual_ip) > 0 }
}

