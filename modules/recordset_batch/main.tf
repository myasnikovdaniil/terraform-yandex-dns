locals {
  records = { for rec in var.records : join("-", [rec.name, rec.type]) => rec }
}

resource "yandex_dns_recordset" "this" {
  for_each = local.records
  zone_id = var.zone_name != null ? data.yandex_dns_zone.main[0].id : var.zone_id
  name    = each.value.name
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
