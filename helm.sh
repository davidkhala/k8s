install() {
  curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
}
list() {
  helm list --all-namespaces
}
$@
