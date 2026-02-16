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


frontend https_front
    bind 10.10.10.10:80
    default_backend http_back

backend http_back
    balance roundrobin
    server web1 192.168.10.10:8080 check
    server web2 192.168.10.10:8081 check
EOT

  filename = "${path.module}/haproxy.cfg"
}
