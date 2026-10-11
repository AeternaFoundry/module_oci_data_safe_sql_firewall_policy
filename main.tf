resource "oci_data_safe_sql_firewall_policy" "data_safe_sql_firewall_policies" {
  for_each = var.data_safe_sql_firewall_policies

  sql_firewall_policy_id      = each.value.sql_firewall_policy_id
  allowed_client_ips          = each.value.allowed_client_ips
  allowed_client_os_usernames = each.value.allowed_client_os_usernames
  allowed_client_programs     = each.value.allowed_client_programs
  compartment_id              = each.value.compartment_id
  defined_tags                = each.value.defined_tags
  description                 = each.value.description
  display_name                = each.value.display_name
  enforcement_scope           = each.value.enforcement_scope
  freeform_tags               = each.value.freeform_tags
  status                      = each.value.status
  violation_action            = each.value.violation_action
  violation_audit             = each.value.violation_audit

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

