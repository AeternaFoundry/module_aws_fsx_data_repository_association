output "fsx_data_repository_associations_id" {
  description = "Map of id values across all fsx_data_repository_associations, keyed the same as var.fsx_data_repository_associations"
  value       = { for k, v in aws_fsx_data_repository_association.fsx_data_repository_associations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "fsx_data_repository_associations_arn" {
  description = "Map of arn values across all fsx_data_repository_associations, keyed the same as var.fsx_data_repository_associations"
  value       = { for k, v in aws_fsx_data_repository_association.fsx_data_repository_associations : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "fsx_data_repository_associations_association_id" {
  description = "Map of association_id values across all fsx_data_repository_associations, keyed the same as var.fsx_data_repository_associations"
  value       = { for k, v in aws_fsx_data_repository_association.fsx_data_repository_associations : k => v.association_id if v.association_id != null && length(v.association_id) > 0 }
}
output "fsx_data_repository_associations_batch_import_meta_data_on_create" {
  description = "Map of batch_import_meta_data_on_create values across all fsx_data_repository_associations, keyed the same as var.fsx_data_repository_associations"
  value       = { for k, v in aws_fsx_data_repository_association.fsx_data_repository_associations : k => v.batch_import_meta_data_on_create if v.batch_import_meta_data_on_create != null }
}
output "fsx_data_repository_associations_data_repository_path" {
  description = "Map of data_repository_path values across all fsx_data_repository_associations, keyed the same as var.fsx_data_repository_associations"
  value       = { for k, v in aws_fsx_data_repository_association.fsx_data_repository_associations : k => v.data_repository_path if v.data_repository_path != null && length(v.data_repository_path) > 0 }
}
output "fsx_data_repository_associations_delete_data_in_filesystem" {
  description = "Map of delete_data_in_filesystem values across all fsx_data_repository_associations, keyed the same as var.fsx_data_repository_associations"
  value       = { for k, v in aws_fsx_data_repository_association.fsx_data_repository_associations : k => v.delete_data_in_filesystem if v.delete_data_in_filesystem != null }
}
output "fsx_data_repository_associations_file_system_id" {
  description = "Map of file_system_id values across all fsx_data_repository_associations, keyed the same as var.fsx_data_repository_associations"
  value       = { for k, v in aws_fsx_data_repository_association.fsx_data_repository_associations : k => v.file_system_id if v.file_system_id != null && length(v.file_system_id) > 0 }
}
output "fsx_data_repository_associations_file_system_path" {
  description = "Map of file_system_path values across all fsx_data_repository_associations, keyed the same as var.fsx_data_repository_associations"
  value       = { for k, v in aws_fsx_data_repository_association.fsx_data_repository_associations : k => v.file_system_path if v.file_system_path != null && length(v.file_system_path) > 0 }
}
output "fsx_data_repository_associations_imported_file_chunk_size" {
  description = "Map of imported_file_chunk_size values across all fsx_data_repository_associations, keyed the same as var.fsx_data_repository_associations"
  value       = { for k, v in aws_fsx_data_repository_association.fsx_data_repository_associations : k => v.imported_file_chunk_size if v.imported_file_chunk_size != null }
}
output "fsx_data_repository_associations_region" {
  description = "Map of region values across all fsx_data_repository_associations, keyed the same as var.fsx_data_repository_associations"
  value       = { for k, v in aws_fsx_data_repository_association.fsx_data_repository_associations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "fsx_data_repository_associations_s3" {
  description = "Map of s3 values across all fsx_data_repository_associations, keyed the same as var.fsx_data_repository_associations"
  value       = { for k, v in aws_fsx_data_repository_association.fsx_data_repository_associations : k => one(v.s3) if v.s3 != null && length(v.s3) > 0 }
}
output "fsx_data_repository_associations_tags" {
  description = "Map of tags values across all fsx_data_repository_associations, keyed the same as var.fsx_data_repository_associations"
  value       = { for k, v in aws_fsx_data_repository_association.fsx_data_repository_associations : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "fsx_data_repository_associations_tags_all" {
  description = "Map of tags_all values across all fsx_data_repository_associations, keyed the same as var.fsx_data_repository_associations"
  value       = { for k, v in aws_fsx_data_repository_association.fsx_data_repository_associations : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

