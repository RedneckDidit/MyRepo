resource "panos_address_group" "group-1" {

  name        = "group-1"
  description = "group-1"
static_addresses = [server-1,server-2]
  
}
