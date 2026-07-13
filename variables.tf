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
  validation {
    condition = alltrue([
      for k, v in var.app_service_custom_hostname_bindings : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.app_service_custom_hostname_bindings : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.app_service_custom_hostname_bindings : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.app_service_custom_hostname_bindings : (
        v.thumbprint == null || (length(v.thumbprint) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

