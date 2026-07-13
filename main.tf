resource "github_team_settings" "team_settingses" {
  for_each = var.team_settingses

  team_id = each.value.team_id
  notify  = each.value.notify

  dynamic "review_request_delegation" {
    for_each = each.value.review_request_delegation != null ? [each.value.review_request_delegation] : []
    content {
      algorithm    = review_request_delegation.value.algorithm
      member_count = review_request_delegation.value.member_count
      notify       = review_request_delegation.value.notify
    }
  }
}

