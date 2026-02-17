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



variable "address_objects" {
  description = "List of address objects"
  type = list(object({
    name        = string
    value       = string
    description = string
    type        = string   # e.g., "ip-netmask"
  }))
}


resource "panos_address_object" "address_objects" {
  for_each = { for obj in var.address_objects : obj.name => obj }

  name        = each.value.name
  value       = each.value.value
  description = each.value.description
  type        = each.value.type
}


variable "group-object" {
  description = "Definition of the address group"
  type = object({
    name        = string
    description = string
  })
}

resource "panos_address_group" "group-object" {

  name        = var.group-object.name
  description = var.group-object.description
  type        = "static"
  member      = [for ao in panos_address.address_objects : ao.name]
}



