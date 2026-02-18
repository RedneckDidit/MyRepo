panos_hostname = "192.168.10.10"

address_objects = [
  {
    name        = "PE-1"
    value       = "10.0.0.1"
    description = "Web server IP"
    type        = "ip-netmask"
  },
  {
    name        = "PE-2"
    value       = "10.0.0.2"
    description = "Web server IP"
    type        = "ip-netmask"
  },
  {
    name        = "PE-3"
    value       = "10.0.0.3"
    description = "Web server IP"
    type        = "ip-netmask"
  },
 {
    name        = "API-PT"
    value       = "192.168.20.70"
    description = "Web server IP"
    type        = "ip-netmask"
  },
  {
    name        = "API-IT"
    value       = "192.168.20.58"
    description = "Web server IP"
    type        = "ip-netmask"
  },
  {
    name        = "API-PL"
    value       = "192.168.20.59"
    description = "Web server IP"
    type        = "ip-netmask"
  }
]
group_objects = [ 
 {
 name        = "group-PE"
 description = "group-WEB"
 static_addresses =["PE-1","PE-2","PE-3"]
},
{
 name        = "group-API-2"
 description = "group-API"
 static_addresses =["API-PT","API-IT","API-PL"]
}

]


