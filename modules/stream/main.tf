resource "sbercloud_lts_stream" "this" {
  count = var.create ? 1 : 0

  region      = var.region
  group_id    = var.group_id
  stream_name = var.stream_name
}