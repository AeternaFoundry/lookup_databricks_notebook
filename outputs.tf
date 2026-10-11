output "notebook_lookup_id" {
  description = "Map of id values across all notebook_lookup, keyed the same as var.notebook_lookup except keys with no id are omitted"
  value       = { for k, v in data.databricks_notebook.notebook_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "notebook_lookup_content" {
  description = "Map of content values across all notebook_lookup, keyed the same as var.notebook_lookup except keys with no content are omitted"
  value       = { for k, v in data.databricks_notebook.notebook_lookup : k => v.content if v.content != null && length(v.content) > 0 }
}
output "notebook_lookup_format" {
  description = "Map of format values across all notebook_lookup, keyed the same as var.notebook_lookup except keys with no format are omitted"
  value       = { for k, v in data.databricks_notebook.notebook_lookup : k => v.format if v.format != null && length(v.format) > 0 }
}
output "notebook_lookup_language" {
  description = "Map of language values across all notebook_lookup, keyed the same as var.notebook_lookup except keys with no language are omitted"
  value       = { for k, v in data.databricks_notebook.notebook_lookup : k => v.language if v.language != null && length(v.language) > 0 }
}
output "notebook_lookup_object_id" {
  description = "Map of object_id values across all notebook_lookup, keyed the same as var.notebook_lookup except keys with no object_id are omitted"
  value       = { for k, v in data.databricks_notebook.notebook_lookup : k => v.object_id if v.object_id != null }
}
output "notebook_lookup_object_type" {
  description = "Map of object_type values across all notebook_lookup, keyed the same as var.notebook_lookup except keys with no object_type are omitted"
  value       = { for k, v in data.databricks_notebook.notebook_lookup : k => v.object_type if v.object_type != null && length(v.object_type) > 0 }
}
output "notebook_lookup_path" {
  description = "Map of path values across all notebook_lookup, keyed the same as var.notebook_lookup except keys with no path are omitted"
  value       = { for k, v in data.databricks_notebook.notebook_lookup : k => v.path if v.path != null && length(v.path) > 0 }
}
output "notebook_lookup_provider_config" {
  description = "Map of provider_config values across all notebook_lookup, keyed the same as var.notebook_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_notebook.notebook_lookup : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "notebook_lookup_workspace_path" {
  description = "Map of workspace_path values across all notebook_lookup, keyed the same as var.notebook_lookup except keys with no workspace_path are omitted"
  value       = { for k, v in data.databricks_notebook.notebook_lookup : k => v.workspace_path if v.workspace_path != null && length(v.workspace_path) > 0 }
}

