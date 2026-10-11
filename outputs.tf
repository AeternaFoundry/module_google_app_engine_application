output "app_engine_applications_id" {
  description = "Map of id values across all app_engine_applications, keyed the same as var.app_engine_applications except keys with no id are omitted"
  value       = { for k, v in google_app_engine_application.app_engine_applications : k => v.id if v.id != null && length(v.id) > 0 }
}
output "app_engine_applications_app_id" {
  description = "Map of app_id values across all app_engine_applications, keyed the same as var.app_engine_applications except keys with no app_id are omitted"
  value       = { for k, v in google_app_engine_application.app_engine_applications : k => v.app_id if v.app_id != null && length(v.app_id) > 0 }
}
output "app_engine_applications_auth_domain" {
  description = "Map of auth_domain values across all app_engine_applications, keyed the same as var.app_engine_applications except keys with no auth_domain are omitted"
  value       = { for k, v in google_app_engine_application.app_engine_applications : k => v.auth_domain if v.auth_domain != null && length(v.auth_domain) > 0 }
}
output "app_engine_applications_code_bucket" {
  description = "Map of code_bucket values across all app_engine_applications, keyed the same as var.app_engine_applications except keys with no code_bucket are omitted"
  value       = { for k, v in google_app_engine_application.app_engine_applications : k => v.code_bucket if v.code_bucket != null && length(v.code_bucket) > 0 }
}
output "app_engine_applications_database_type" {
  description = "Map of database_type values across all app_engine_applications, keyed the same as var.app_engine_applications except keys with no database_type are omitted"
  value       = { for k, v in google_app_engine_application.app_engine_applications : k => v.database_type if v.database_type != null && length(v.database_type) > 0 }
}
output "app_engine_applications_default_bucket" {
  description = "Map of default_bucket values across all app_engine_applications, keyed the same as var.app_engine_applications except keys with no default_bucket are omitted"
  value       = { for k, v in google_app_engine_application.app_engine_applications : k => v.default_bucket if v.default_bucket != null && length(v.default_bucket) > 0 }
}
output "app_engine_applications_default_hostname" {
  description = "Map of default_hostname values across all app_engine_applications, keyed the same as var.app_engine_applications except keys with no default_hostname are omitted"
  value       = { for k, v in google_app_engine_application.app_engine_applications : k => v.default_hostname if v.default_hostname != null && length(v.default_hostname) > 0 }
}
output "app_engine_applications_feature_settings" {
  description = "Map of feature_settings values across all app_engine_applications, keyed the same as var.app_engine_applications except keys with no feature_settings are omitted"
  value       = { for k, v in google_app_engine_application.app_engine_applications : k => one(v.feature_settings) if v.feature_settings != null && length(v.feature_settings) > 0 }
}
output "app_engine_applications_gcr_domain" {
  description = "Map of gcr_domain values across all app_engine_applications, keyed the same as var.app_engine_applications except keys with no gcr_domain are omitted"
  value       = { for k, v in google_app_engine_application.app_engine_applications : k => v.gcr_domain if v.gcr_domain != null && length(v.gcr_domain) > 0 }
}
output "app_engine_applications_iap" {
  description = "Map of iap values across all app_engine_applications, keyed the same as var.app_engine_applications except keys with no iap are omitted"
  value       = { for k, v in google_app_engine_application.app_engine_applications : k => one(v.iap) if v.iap != null && length(v.iap) > 0 }
  sensitive   = true
}
output "app_engine_applications_location_id" {
  description = "Map of location_id values across all app_engine_applications, keyed the same as var.app_engine_applications except keys with no location_id are omitted"
  value       = { for k, v in google_app_engine_application.app_engine_applications : k => v.location_id if v.location_id != null && length(v.location_id) > 0 }
}
output "app_engine_applications_name" {
  description = "Map of name values across all app_engine_applications, keyed the same as var.app_engine_applications except keys with no name are omitted"
  value       = { for k, v in google_app_engine_application.app_engine_applications : k => v.name if v.name != null && length(v.name) > 0 }
}
output "app_engine_applications_project" {
  description = "Map of project values across all app_engine_applications, keyed the same as var.app_engine_applications except keys with no project are omitted"
  value       = { for k, v in google_app_engine_application.app_engine_applications : k => v.project if v.project != null && length(v.project) > 0 }
}
output "app_engine_applications_serving_status" {
  description = "Map of serving_status values across all app_engine_applications, keyed the same as var.app_engine_applications except keys with no serving_status are omitted"
  value       = { for k, v in google_app_engine_application.app_engine_applications : k => v.serving_status if v.serving_status != null && length(v.serving_status) > 0 }
}
output "app_engine_applications_ssl_policy" {
  description = "Map of ssl_policy values across all app_engine_applications, keyed the same as var.app_engine_applications except keys with no ssl_policy are omitted"
  value       = { for k, v in google_app_engine_application.app_engine_applications : k => v.ssl_policy if v.ssl_policy != null && length(v.ssl_policy) > 0 }
}
output "app_engine_applications_url_dispatch_rule" {
  description = "Map of url_dispatch_rule values across all app_engine_applications, keyed the same as var.app_engine_applications except keys with no url_dispatch_rule are omitted"
  value       = { for k, v in google_app_engine_application.app_engine_applications : k => v.url_dispatch_rule if v.url_dispatch_rule != null && length(v.url_dispatch_rule) > 0 }
}

