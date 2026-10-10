resource "aws_efs_backup_policy" "efs_backup_policies" {
  for_each = var.efs_backup_policies

  file_system_id = each.value.file_system_id
  region         = each.value.region

  backup_policy {
    status = each.value.backup_policy.status
  }
}

