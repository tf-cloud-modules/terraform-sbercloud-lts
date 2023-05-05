resource "sbercloud_lts_group" "this" {
  count = var.create ? 1 : 0

  region      = var.region
  group_name  = var.group_name
  ttl_in_days = var.ttl_in_days
}