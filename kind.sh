set-rootless() {
  sudo mkdir -p /etc/systemd/system/user@.service.d/
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
# FIXME: doesn't work to resolve error
# failed to create cluster: running kind with rootless provider requires setting systemd property "Delegate=yes", see https://kind.sigs.k8s.io/docs/user/rootless/
}

$@
