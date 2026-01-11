variable "app_service_custom_hostname_bindings" {
  description = <<EOT
Map of app_service_custom_hostname_bindings, attributes below
Required:
    - app_service_name
    - hostname
    - resource_group_name
Optional:
    - ssl_state
    - thumbprint
EOT

  type = map(object({
    app_service_name    = string
    hostname            = string
    resource_group_name = string
    ssl_state           = optional(string)
    thumbprint          = optional(string)
  }))
}

