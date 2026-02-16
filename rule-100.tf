provider "iptables" {
  firewall_ip         = "192.168.0.1"
  port                = 8080
  allowed_cidr_blocks = ["10.0.0.0/24"]
  https               = true
  insecure            = true
  vault_enable        = true
}

resource iptables_rules rules-front {
  name           = "rules-front"
  project        = iptables_project.theproject.name
  on_cidr_blocks = ["10.10.0.1", "10.10.0.2", "10.10.0.16/28"]
  ingress {
    protocol = "tcp"
    to_port  = "80,443"
  }
}
