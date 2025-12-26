resource "yandex_dns_recordset" "this" {
  for_each = var.records
  zone_id = var.zone_name != null ? data.yandex_dns_zone.main[0].id : var.zone_id
  name    = each.key
  type    = each.value.type
  ttl     = each.value.ttl != null ? each.value.ttl : var.default_ttl
  data    = each.value.data

  dynamic "timeouts" {
    for_each = var.timeouts == null ? [] : [var.timeouts]
    content {
      create = try(timeouts.value.create, null)
      update = try(timeouts.value.update, null)
      delete = try(timeouts.value.delete, null)
    }
  }

}
