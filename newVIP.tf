terraform {
  required_providers {
    haproxy = {
      source = "SepehrImanian/haproxy"
      version = "0.0.7"
    }
  }
}

resource "haproxy_frontend" "front_test" {
  name                        = "front_test"
  backend                     = "backend_test"
  http_connection_mode        = "http-keep-alive"
  accept_invalid_http_request = true
  maxconn                     = 100
  mode                        = "http"
  backlog                     = 1000
  http_keep_alive_timeout     = 10
  http_request_timeout        = 10
  http_use_proxy_header       = true
  httplog                     = true
  httpslog                    = true
  tcplog                      = false

  compression {
    algorithms = ["gzip", "identity"]
    offload    = true
    types      = ["text/html", "text/plain", "text/css", "application/javascript"]
  }

  forwardfor {
    enabled = true
    header  = "X-Forwarded-For"
    ifnone  = true
  }

  depends_on = [haproxy_backend.backend_test]
}

resource "haproxy_backend" "backend_test" {
  name                 = "backend_test"
  mode                 = "http"
  http_connection_mode = "http-keep-alive"
  server_timeout       = 9
  check_timeout        = 20
  connect_timeout      = 20
  queue_timeout        = 20
  tarpit_timeout       = 20
  tunnel_timeout       = 20
  check_cache          = true

  balance {
    algorithm = "roundrobin"
  }

  httpchk_params {
    uri     = "/health"
    version = "HTTP/1.1"
    method  = "GET"
  }

  forwardfor {
    enabled = true
  }
}

resource "haproxy_bind" "bind_test" {
  name        = "bind_test"
  port        = 8080
  address     = "0.0.0.0"
  parent_name = "front_test"
  parent_type = "frontend"
  maxconn     = 3000
  depends_on  = [haproxy_frontend.front_test]
}
