resource "oci_database_migration_assessment_assessor_action" "database_migration_assessment_assessor_actions" {
  for_each = var.database_migration_assessment_assessor_actions

  assessment_id   = each.value.assessment_id
  assessor_action = each.value.assessor_action
  assessor_name   = each.value.assessor_name

  dynamic "items" {
    for_each = each.value.items
    content {
      name  = items.value.name
      value = items.value.value
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

