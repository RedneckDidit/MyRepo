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
