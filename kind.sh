set-rootless(){
cat <<EOF | sudo tee /etc/systemd/system/user@.service.d/delegate.conf
[Service]
Delegate=yes
EOF
  sudo systemctl daemon-reload
  
cat <<EOF | sudo tee /etc/modules-load.d/iptables.conf
ip6_tables
ip6table_nat
ip_tables
iptable_nat
EOF
  
}

$@
