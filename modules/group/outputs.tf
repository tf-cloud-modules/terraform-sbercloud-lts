output "id" {
  description = "Specifies a resource ID in UUID format."
  value       = try(sbercloud_lts_group.this[0].id, "")
}