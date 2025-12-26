#
# Zone identification
#
variable "zone_name" {
  description = "The name of the DNS zone where this record set will be created. This parameter is ignored if zone_id is specified."
  type        = string
  default     = null
}
variable "zone_id" {
  description = "The ID of the DNS zone where this record set will be created. Takes precedence over zone_name if both are specified."
  type        = string
  default     = null
}

variable "folder_id" {
  description = "The ID of the Yandex Cloud folder where the DNS record will be created. If omitted, the default folder ID from the provider configuration will be used."
  type        = string
  default     = null
}

variable "timeouts" {
  description = "Timeout settings for cluster operations"
  type = object({
    create = optional(string)
    update = optional(string)
    delete = optional(string)
  })
  default = null
}

#
# DNS record list
#

variable "records" {
  description = "List of managed records. Names can be specified with or without domain suffix."
  type = list(object({
      name = string
      type = string
      data = list(string) 
      ttl  = optional(string)
  }))
}

variable "default_ttl" {
  description = "Default time-to-live (TTL) value for record set in seconds. Controls how long DNS resolvers cache this record."
  type        = string
  default     = null
}
