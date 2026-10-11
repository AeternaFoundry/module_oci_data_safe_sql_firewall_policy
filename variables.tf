variable "data_safe_sql_firewall_policies" {
  description = <<EOT
Map of data_safe_sql_firewall_policies, attributes below
Required:
    - sql_firewall_policy_id
Optional:
    - allowed_client_ips
    - allowed_client_os_usernames
    - allowed_client_programs
    - compartment_id
    - defined_tags
    - description
    - display_name
    - enforcement_scope
    - freeform_tags
    - status
    - violation_action
    - violation_audit
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    sql_firewall_policy_id      = string
    allowed_client_ips          = optional(list(string))
    allowed_client_os_usernames = optional(list(string))
    allowed_client_programs     = optional(list(string))
    compartment_id              = optional(string)
    defined_tags                = optional(map(string))
    description                 = optional(string)
    display_name                = optional(string)
    enforcement_scope           = optional(string)
    freeform_tags               = optional(map(string))
    status                      = optional(string)
    violation_action            = optional(string)
    violation_audit             = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

