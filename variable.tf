variable "panos_hostname" {
  description = "Palo Alto firewall IP"
  type        = string
}

variable "panos_api_key" {
  description = "API key"
  type        = string
  sensitive   = true
}

variable "address_objects" {
  description = "List of address objects"
  type = list(object({
    name        = string
    value       = string
    description = string
    type        = string   # e.g., "ip-netmask"
  }))
}
variable "group_objects" {
type = list(object({ 
name        = string
 description = string
 static_addresses = list(string)
}))
}
