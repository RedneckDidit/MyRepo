terraform {
  required_providers {
    panos = {
      source  = "PaloAltoNetworks/panos"
      version = "~> 1.11"
    }
  }
}
provider "panos" {
  hostname = "192.168.10.10"
  username = "admin"
  password = "admin"
}
