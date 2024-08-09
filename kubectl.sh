version() {
  kubectl version --client
}
logs() {
  kubectl logs --since=1h --tail=200 $1
}
nodes() {
  kubectl get nodes -o 'jsonpath={.items[*].metadata.name}'

}
delete-node() {
  kubectl drain $node --ignore-daemonsets --delete-emptydir-data
}
namespaces() {
  kubectl get namespaces -o jsonpath='{.items[*].metadata.name}'
}
deployments() {
  kubectl get deployment -n $namespace --no-headers=true | awk '{print $1}'
}
deployment-restart() {
  kubectl rollout restart deployment $1 -n $namespace
}

$@
