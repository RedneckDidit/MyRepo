variable "panos_hostname" {
  description = "Palo Alto firewall IP"
  type        = string
}

variable "panos_api_key" {
  description = "API key"
  type        = string
  sensitive   = true
}

