list() {
  helm list --all-namespaces
}
install() {
  helm install "$@" --wait --create-namespace
}
uninstall() {
  helm uninstall "$@" --wait --ignore-not-found
}
upgrade() {
  helm upgrade "$@" --wait
}
$@
