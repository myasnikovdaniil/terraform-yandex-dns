output "record_list" {
  description = "The DNS record set list"
  value       = {
    for name, data in yandex_dns_recordset.this : name => data
  }
}
