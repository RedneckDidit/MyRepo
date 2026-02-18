panos_hostname = "192.168.10.10"

address_objects = [
  {
    name        = "server-88"
    value       = "10.10.10.88"
    description = "Web server IP"
    type        = "ip-netmask"
  },
  {
    name        = "server-99"
    value       = "10.10.10.99"
    description = "Web server IP"
    type        = "ip-netmask"
  },
  {
    name        = "server-00"
    value       = "10.10.10.200"
    description = "Web server IP"
    type        = "ip-netmask"
  },
 {
    name        = "server-56"
    value       = "10.10.10.56"
    description = "Web server IP"
    type        = "ip-netmask"
  },
  {
    name        = "server-58"
    value       = "10.10.10.58"
    description = "Web server IP"
    type        = "ip-netmask"
  },
  {
    name        = "server-59"
    value       = "10.10.10.59"
    description = "Web server IP"
    type        = "ip-netmask"
  }
]
group_objects = [ 
 {
 name        = "group-XYZ"
 description = "group-300"
 static_addresses =["server-88","server-99","server-00"]
},
{
 name        = "group-500"
 description = "group-500"
 static_addresses =["server-56","server-58","server-59"]
}

]


