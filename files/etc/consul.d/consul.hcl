datacenter = "dc1"
bind_addr = "172.16.1.1"
client_addr = "0.0.0.0"
data_dir = "/var/lib/consul"
retry_join = ["172.16.1.2"]
performance {
  raft_multiplier = 1
}
enable_syslog = true
enable_local_script_checks = true
disable_update_check = true
disable_remote_exec = true
recursors = ["114.114.114.114", "8.8.8.8"]
dns_config {
  node_ttl = "10s"
  service_ttl {
    "*" = "10s",
    "web" = "30s",
    "db*" = "10s",
    "db-master" = "3s"
    }
}
