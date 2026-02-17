resource "panos_address_group" "group-1" {


  name        = "group-1"
  description = "description"
  static_value     = [server-1,server-2]
}
