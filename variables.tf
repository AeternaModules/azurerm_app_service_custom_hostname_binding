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
  # --- Unconfirmed validation candidates, derived from azurerm_app_service_custom_hostname_binding's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: ssl_state
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: thumbprint
  #   condition: length(value) > 0
  #   message:   must not be empty
}

