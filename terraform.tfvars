panos_hostname = "192.168.10.10"

address_objects = [
  {
    name        = "WEB-ECOM"
    value       = "192.168.10.80"
    description = "Web server IP"
    type        = "ip-netmask"
  },
  {
    name        = "WEB-COM"
    value       = "192.168.10.99"
    description = "Web server IP"
    type        = "ip-netmask"
  },
  {
    name        = "WEB-EN"
    value       = "192.168.10.200"
    description = "Web server IP"
    type        = "ip-netmask"
  },
 {
    name        = "API-FR"
    value       = "192.168.10.56"
    description = "Web server IP"
    type        = "ip-netmask"
  },
  {
    name        = "API-MA"
    value       = "192.168.10.58"
    description = "Web server IP"
    type        = "ip-netmask"
  },
  {
    name        = "API-ES"
    value       = "192.168.10.59"
    description = "Web server IP"
    type        = "ip-netmask"
  }
]
group_objects = [ 
 {
 name        = "group-WEB"
 description = "group-WEB"
 static_addresses =["WEB-ECOM","WEB-COM","WEB-EN"]
},
{
 name        = "group-API"
 description = "group-API"
 static_addresses =["API-FR","API-MA","API-ES"]
}

]


