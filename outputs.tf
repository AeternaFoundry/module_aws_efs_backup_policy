output "efs_backup_policies_id" {
  description = "Map of id values across all efs_backup_policies, keyed the same as var.efs_backup_policies"
  value       = { for k, v in aws_efs_backup_policy.efs_backup_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "efs_backup_policies_backup_policy" {
  description = "Map of backup_policy values across all efs_backup_policies, keyed the same as var.efs_backup_policies"
  value       = { for k, v in aws_efs_backup_policy.efs_backup_policies : k => one(v.backup_policy) if v.backup_policy != null && length(v.backup_policy) > 0 }
}
output "efs_backup_policies_file_system_id" {
  description = "Map of file_system_id values across all efs_backup_policies, keyed the same as var.efs_backup_policies"
  value       = { for k, v in aws_efs_backup_policy.efs_backup_policies : k => v.file_system_id if v.file_system_id != null && length(v.file_system_id) > 0 }
}
output "efs_backup_policies_region" {
  description = "Map of region values across all efs_backup_policies, keyed the same as var.efs_backup_policies"
  value       = { for k, v in aws_efs_backup_policy.efs_backup_policies : k => v.region if v.region != null && length(v.region) > 0 }
}

