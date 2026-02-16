resource "local_file" "vip1" {
  content  = <<EOT
frontend http_front-1
    bind 10.10.10.10:80
    default_backend http_back

backend http_back
    balance roundrobin
    server web1 192.168.1.10:8080 check
EOT

  filename = "${path.module}/haproxy_vip1.cfg"
}

