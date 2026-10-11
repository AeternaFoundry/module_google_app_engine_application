variable "app_engine_applications" {
  description = <<EOT
Map of app_engine_applications, attributes below
Required:
    - location_id
Optional:
    - auth_domain
    - database_type
    - project
    - serving_status
    - ssl_policy
    - feature_settings (block):
        - split_health_checks (required)
    - iap (block):
        - enabled (optional)
        - oauth2_client_id (required)
        - oauth2_client_secret (optional)
        - oauth2_client_secret_wo (optional)
        - oauth2_client_secret_wo_version (optional)
    - timeouts (block):
        - create (optional)
        - update (optional)
EOT

  type = map(object({
    location_id    = string
    auth_domain    = optional(string)
    database_type  = optional(string)
    project        = optional(string)
    serving_status = optional(string)
    ssl_policy     = optional(string)
    feature_settings = optional(object({
      split_health_checks = bool
    }))
    iap = optional(object({
      enabled                         = optional(bool)
      oauth2_client_id                = string
      oauth2_client_secret            = optional(string)
      oauth2_client_secret_wo         = optional(string)
      oauth2_client_secret_wo_version = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.app_engine_applications : (
        v.serving_status == null || (contains(["UNSPECIFIED", "SERVING", "USER_DISABLED", "SYSTEM_DISABLED"], v.serving_status))
      )
    ])
    error_message = "must be one of: \"UNSPECIFIED\", \"SERVING\", \"USER_DISABLED\", \"SYSTEM_DISABLED\""
  }
  validation {
    condition = alltrue([
      for k, v in var.app_engine_applications : (
        v.ssl_policy == null || (contains(["SSL_POLICY_UNSPECIFIED", "DEFAULT", "MODERN"], v.ssl_policy))
      )
    ])
    error_message = "must be one of: \"SSL_POLICY_UNSPECIFIED\", \"DEFAULT\", \"MODERN\""
  }
  validation {
    condition = alltrue([
      for k, v in var.app_engine_applications : (
        v.database_type == null || (contains(["CLOUD_FIRESTORE", "CLOUD_DATASTORE_COMPATIBILITY", "CLOUD_DATASTORE"], v.database_type))
      )
    ])
    error_message = "must be one of: \"CLOUD_FIRESTORE\", \"CLOUD_DATASTORE_COMPATIBILITY\", \"CLOUD_DATASTORE\""
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

