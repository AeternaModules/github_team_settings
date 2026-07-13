output "team_settingses_id" {
  description = "Map of id values across all team_settingses, keyed the same as var.team_settingses"
  value       = { for k, v in github_team_settings.team_settingses : k => v.id }
}
output "team_settingses_notify" {
  description = "Map of notify values across all team_settingses, keyed the same as var.team_settingses"
  value       = { for k, v in github_team_settings.team_settingses : k => v.notify }
}
output "team_settingses_review_request_delegation" {
  description = "Map of review_request_delegation values across all team_settingses, keyed the same as var.team_settingses"
  value       = { for k, v in github_team_settings.team_settingses : k => v.review_request_delegation }
}
output "team_settingses_team_id" {
  description = "Map of team_id values across all team_settingses, keyed the same as var.team_settingses"
  value       = { for k, v in github_team_settings.team_settingses : k => v.team_id }
}
output "team_settingses_team_slug" {
  description = "Map of team_slug values across all team_settingses, keyed the same as var.team_settingses"
  value       = { for k, v in github_team_settings.team_settingses : k => v.team_slug }
}
output "team_settingses_team_uid" {
  description = "Map of team_uid values across all team_settingses, keyed the same as var.team_settingses"
  value       = { for k, v in github_team_settings.team_settingses : k => v.team_uid }
}

