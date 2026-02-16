terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = ">= 3.2.0"
    }
    local = {
      source  = "hashicorp/local"
      version = ">= 2.6.2"
    }
  }
}

provider "null" {}

# Example: Create HAProxy config using local file
resource "local_file" "haproxy_cfg" {
  content = <<EOT
global
    log /dev/log    local0
    log /dev/log    local1 notice
    daemon

defaults
    log     global
    mode    http
    option  httplog
    timeout connect 5000ms
    timeout client  50000ms
    timeout server  50000ms

frontend http_front
    bind *:8088
    default_backend http_back

backend http_back
    balance roundrobin
    server web1 127.0.0.1:8080 check
    server web2 127.0.0.1:8081 check
EOT

  filename = "${path.module}/haproxy.cfg"
}
