panos_hostname = "192.168.10.10"

address_objects = [
  {
    name        = "server-33"
    value       = "10.10.10.33"
    description = "Web server IP"
    type        = "ip-netmask"
  },
  {
    name        = "server-34"
    value       = "10.10.10.34"
    description = "Web server IP"
    type        = "ip-netmask"
  },
  {
    name        = "server-35"
    value       = "10.10.10.35"
    description = "Web server IP"
    type        = "ip-netmask"
  },
 {
    name        = "server-53"
    value       = "10.10.10.53"
    description = "Web server IP"
    type        = "ip-netmask"
  },
  {
    name        = "server-54"
    value       = "10.10.10.54"
    description = "Web server IP"
    type        = "ip-netmask"
  },
  {
    name        = "server-55"
    value       = "10.10.10.55"
    description = "Web server IP"
    type        = "ip-netmask"
  }
]
group_objects = [ 
 {
 name        = "group-300"
 description = "group-300"
 static_addresses =["server-88","server-99","server-00"]
},
{
 name        = "group-20"
 description = "group-20"
 static_addresses =["server-22","server-44","server-77"]
}

]


