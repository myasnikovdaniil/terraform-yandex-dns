# yandex-dns-recordset-batch

Manage batch of Yandex Cloud DNS RecordSet.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_yandex"></a> [yandex](#requirement\_yandex) | >= 0.72.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_yandex"></a> [yandex](#provider\_yandex) | >= 0.72.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [yandex_dns_recordset.this](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/resources/dns_recordset) | resource |
| [yandex_dns_zone.main](https://registry.terraform.io/providers/yandex-cloud/yandex/latest/docs/data-sources/dns_zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_ttl"></a> [default\_ttl](#input\_default\_ttl) | Default time-to-live (TTL) value for record set in seconds. Controls how long DNS resolvers cache this record. | `string` | `null` | no |
| <a name="input_folder_id"></a> [folder\_id](#input\_folder\_id) | The ID of the Yandex Cloud folder where the DNS record will be created. If omitted, the default folder ID from the provider configuration will be used. | `string` | `null` | no |
| <a name="input_records"></a> [records](#input\_records) | List of managed records. Keys of map are names of dns records, can be specified with or without domain suffix. | <pre>map(object({<br/>      type = string<br/>      data = list(string) <br/>      ttl  = optional(string)<br/>  }))</pre> | n/a | yes |
| <a name="input_timeouts"></a> [timeouts](#input\_timeouts) | Timeout settings for cluster operations | <pre>object({<br/>    create = optional(string)<br/>    update = optional(string)<br/>    delete = optional(string)<br/>  })</pre> | `null` | no |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | The ID of the DNS zone where this record set will be created. Takes precedence over zone\_name if both are specified. | `string` | `null` | no |
| <a name="input_zone_name"></a> [zone\_name](#input\_zone\_name) | The name of the DNS zone where this record set will be created. This parameter is ignored if zone\_id is specified. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_record_list"></a> [record\_list](#output\_record\_list) | The DNS record set list |
<!-- END_TF_DOCS -->
