variable "efs_backup_policies" {
  description = <<EOT
Map of efs_backup_policies, attributes below
Required:
    - file_system_id
    - backup_policy (block):
        - status (required)
Optional:
    - region
EOT

  type = map(object({
    file_system_id = string
    region         = optional(string)
    backup_policy = object({
      status = string
    })
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

