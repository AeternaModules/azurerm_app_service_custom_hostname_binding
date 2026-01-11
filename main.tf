resource "azurerm_app_service_custom_hostname_binding" "app_service_custom_hostname_bindings" {
  for_each = var.app_service_custom_hostname_bindings

  app_service_name    = each.value.app_service_name
  hostname            = each.value.hostname
  resource_group_name = each.value.resource_group_name
  ssl_state           = each.value.ssl_state
  thumbprint          = each.value.thumbprint
}

