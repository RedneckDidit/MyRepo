resource iptables_rules rules-front {
  name           = "rules-front"
  project        = iptables_project.theproject.name
  on_cidr_blocks = ["10.10.0.1", "10.10.0.2", "10.10.0.16/28"]
  ingress {
    protocol = "tcp"
    to_port  = "80,443"
  }
}
