variable "team_settingses" {
  description = <<EOT
Map of team_settingses, attributes below
Required:
    - team_id
Optional:
    - notify
    - review_request_delegation (block):
        - algorithm (optional)
        - member_count (optional)
        - notify (optional)
EOT

  type = map(object({
    team_id = string
    notify  = optional(bool)
    review_request_delegation = optional(object({
      algorithm    = optional(string)
      member_count = optional(number)
      notify       = optional(bool)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.team_settingses : (
        v.review_request_delegation == null || (v.review_request_delegation.member_count == null || ((v.review_request_delegation.member_count >= 1)))
      )
    ])
    error_message = "all of: must be at least 1"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

