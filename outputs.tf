output "database_migration_assessment_assessor_actions_id" {
  description = "Map of id values across all database_migration_assessment_assessor_actions, keyed the same as var.database_migration_assessment_assessor_actions except keys with no id are omitted"
  value       = { for k, v in oci_database_migration_assessment_assessor_action.database_migration_assessment_assessor_actions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_migration_assessment_assessor_actions_assessment_id" {
  description = "Map of assessment_id values across all database_migration_assessment_assessor_actions, keyed the same as var.database_migration_assessment_assessor_actions except keys with no assessment_id are omitted"
  value       = { for k, v in oci_database_migration_assessment_assessor_action.database_migration_assessment_assessor_actions : k => v.assessment_id if v.assessment_id != null && length(v.assessment_id) > 0 }
}
output "database_migration_assessment_assessor_actions_assessor_action" {
  description = "Map of assessor_action values across all database_migration_assessment_assessor_actions, keyed the same as var.database_migration_assessment_assessor_actions except keys with no assessor_action are omitted"
  value       = { for k, v in oci_database_migration_assessment_assessor_action.database_migration_assessment_assessor_actions : k => v.assessor_action if v.assessor_action != null && length(v.assessor_action) > 0 }
}
output "database_migration_assessment_assessor_actions_assessor_name" {
  description = "Map of assessor_name values across all database_migration_assessment_assessor_actions, keyed the same as var.database_migration_assessment_assessor_actions except keys with no assessor_name are omitted"
  value       = { for k, v in oci_database_migration_assessment_assessor_action.database_migration_assessment_assessor_actions : k => v.assessor_name if v.assessor_name != null && length(v.assessor_name) > 0 }
}
output "database_migration_assessment_assessor_actions_items" {
  description = "Map of items values across all database_migration_assessment_assessor_actions, keyed the same as var.database_migration_assessment_assessor_actions except keys with no items are omitted"
  value       = { for k, v in oci_database_migration_assessment_assessor_action.database_migration_assessment_assessor_actions : k => v.items if v.items != null && length(v.items) > 0 }
}

