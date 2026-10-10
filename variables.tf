variable "fsx_data_repository_associations" {
  description = <<EOT
Map of fsx_data_repository_associations, attributes below
Required:
    - data_repository_path
    - file_system_id
    - file_system_path
Optional:
    - batch_import_meta_data_on_create
    - delete_data_in_filesystem
    - imported_file_chunk_size
    - region
    - tags
    - tags_all
    - s3 (block):
        - auto_export_policy (optional, block):
            - events (optional)
        - auto_import_policy (optional, block):
            - events (optional)
EOT

  type = map(object({
    data_repository_path             = string
    file_system_id                   = string
    file_system_path                 = string
    batch_import_meta_data_on_create = optional(bool)
    delete_data_in_filesystem        = optional(bool)
    imported_file_chunk_size         = optional(number)
    region                           = optional(string)
    tags                             = optional(map(string))
    tags_all                         = optional(map(string))
    s3 = optional(object({
      auto_export_policy = optional(object({
        events = optional(list(string))
      }))
      auto_import_policy = optional(object({
        events = optional(list(string))
      }))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.fsx_data_repository_associations : (
        (length(v.data_repository_path) >= 3 && length(v.data_repository_path) <= 900) && (can(regex("^s3://", v.data_repository_path)))
      )
    ])
    error_message = "all of: must be between 3 and 900 characters; must begin with s3://"
  }
  validation {
    condition = alltrue([
      for k, v in var.fsx_data_repository_associations : (
        (length(v.file_system_path) >= 1 && length(v.file_system_path) <= 4096) && (can(regex("^/.*", v.file_system_path)))
      )
    ])
    error_message = "all of: must be between 1 and 4096 characters; path must begin with /"
  }
  validation {
    condition = alltrue([
      for k, v in var.fsx_data_repository_associations : (
        v.imported_file_chunk_size == null || (v.imported_file_chunk_size >= 1 && v.imported_file_chunk_size <= 512000)
      )
    ])
    error_message = "must be between 1 and 512000"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

