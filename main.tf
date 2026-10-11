resource "google_app_engine_application" "app_engine_applications" {
  for_each = var.app_engine_applications

  location_id    = each.value.location_id
  auth_domain    = each.value.auth_domain
  database_type  = each.value.database_type
  project        = each.value.project
  serving_status = each.value.serving_status
  ssl_policy     = each.value.ssl_policy

  dynamic "feature_settings" {
    for_each = each.value.feature_settings != null ? [each.value.feature_settings] : []
    content {
      split_health_checks = feature_settings.value.split_health_checks
    }
  }

  dynamic "iap" {
    for_each = each.value.iap != null ? [each.value.iap] : []
    content {
      enabled                         = iap.value.enabled
      oauth2_client_id                = iap.value.oauth2_client_id
      oauth2_client_secret            = iap.value.oauth2_client_secret
      oauth2_client_secret_wo         = iap.value.oauth2_client_secret_wo
      oauth2_client_secret_wo_version = iap.value.oauth2_client_secret_wo_version
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      update = timeouts.value.update
    }
  }
}

