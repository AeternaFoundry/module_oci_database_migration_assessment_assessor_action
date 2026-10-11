variable "database_migration_assessment_assessor_actions" {
  description = <<EOT
Map of database_migration_assessment_assessor_actions, attributes below
Required:
    - assessment_id
    - assessor_action
    - assessor_name
    - items (block):
        - name (required)
        - value (required)
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    assessment_id   = string
    assessor_action = string
    assessor_name   = string
    items = list(object({
      name  = string
      value = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.database_migration_assessment_assessor_actions : (
        length(v.items) >= 1
      )
    ])
    error_message = "Each items list must contain at least 1 items"
  }
}

