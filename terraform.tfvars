panos_hostname = "192.168.10.10"

address_objects = [
  {
    name        = "server-8"
    value       = "10.10.10.80"
    description = "Web server IP"
    type        = "ip-netmask"
  },
  {
    name        = "server-9"
    value       = "10.10.10.90"
    description = "Database server IP"
    type        = "ip-netmask"
  }
]

group-object = {
  name        = "Web_DB_Group"
  description = "Group including web and DB servers"
}
