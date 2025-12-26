output "record_list" {
  description = "The DNS record set list"
  value       = {
    for k, v in yandex_dns_recordset.this : v.id => v
  }
}
