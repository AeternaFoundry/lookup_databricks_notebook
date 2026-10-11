data "databricks_notebook" "notebook_lookup" {
  for_each = var.notebook_lookup

  format      = each.value.format
  path        = each.value.path
  language    = each.value.language
  object_id   = each.value.object_id
  object_type = each.value.object_type

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

