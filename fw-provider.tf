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
timeouts {
    create = "2m"
    read   = "2m"
    update = "2m"
    delete = "2m"
  }
}
