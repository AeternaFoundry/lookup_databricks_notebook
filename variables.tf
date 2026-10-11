variable "notebook_lookup" {
  description = <<EOT
Map of notebook_lookup, attributes below
Required:
    - format
    - path
Optional:
    - language
    - object_id
    - object_type
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    format      = string
    path        = string
    language    = optional(string)
    object_id   = optional(number)
    object_type = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.notebook_lookup : (
        contains(["DBC", "SOURCE", "HTML"], v.format)
      )
    ])
    error_message = "must be one of: \"DBC\", \"SOURCE\", \"HTML\""
  }
}

