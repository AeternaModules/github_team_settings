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
  # --- Unconfirmed validation candidates, derived from github_team_settings's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: review_request_delegation.algorithm
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: review_request_delegation.member_count
  #   source:    validation.All(...) - no translation rule yet, add one
}

