variable "panos_hostname" {
  description = "Palo Alto Firewall hostname or IP"
  type        = string
}

variable "panos_api_key" {
  description = "Palo Alto API key"
  type        = string
  sensitive   = true
}
