resource "panos_address_group" "group-1" {

  name        = "group-1"
  description = "group-1"
  static_address {
      name = server-1
  }
  static_address {
      name = server-2
  }
}
