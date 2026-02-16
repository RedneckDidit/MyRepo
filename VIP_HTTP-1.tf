


frontend https_front
    bind 10.10.10.10:80
    default_backend http_back

backend http_back
    balance roundrobin
    server web1 192.168.10.10:8080 check
    server web2 192.168.10.10:8081 check
}
