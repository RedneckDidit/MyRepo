terraform {
  required_providers {
    panos = {
      source  = "PaloAltoNetworks/panos"
      version = "~> 1.11"
    }
  }
}
provider "panos" {
  hostname = var.panos_hostname
  api_key  = var.panos_api_key
}



resource "panos_address_object" "address_objects" {
  for_each = { for obj in var.address_objects : obj.name => obj }

  name        = each.value.name
  value       = each.value.value
  description = each.value.description
  type        = each.value.type
}

resource "panos_address_group" "group-1" {
  name        = "group-1"
  description = "group-1"
static_addresses = [each.value.name]
}
  





