panos_hostname = "192.168.10.10"

address_objects = [
  {
    name        = "server-10"
    value       = "10.10.10.100"
    description = "Web server IP"
    type        = "ip-netmask"
  },
  {
    name        = "server-20"
    value       = "10.10.10.20"
    description = "Web server IP"
    type        = "ip-netmask"
  },
  {
    name        = "server-30"
    value       = "10.10.10.30"
    description = "Web server IP"
    type        = "ip-netmask"
  },
 {
    name        = "server-11"
    value       = "10.10.10.101"
    description = "Web server IP"
    type        = "ip-netmask"
  },
  {
    name        = "server-21"
    value       = "10.10.10.21"
    description = "Web server IP"
    type        = "ip-netmask"
  },
  {
    name        = "server-31"
    value       = "10.10.10.31"
    description = "Web server IP"
    type        = "ip-netmask"
  }
]
group_objects = [ 
 {
 name        = "group-10"
 description = "group-10"
 static_addresses =["server-10","server-20","server-30"]
},
{
 name        = "group-20"
 description = "group-20"
 static_addresses =["server-11","server-21","server-31"]
}

]


