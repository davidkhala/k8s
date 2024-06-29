version() {
  kubectl version --client
}
logs() {
  kubectl logs --since=1h --tail=200 $1
}
nodes(){
  kubectl get nodes
}

namespaces(){
  kubectl get namespaces -o jsonpath='{.items[*].metadata.name}')
}
deployments(){
  kubectl get deployment -n $namespace --no-headers=true | awk '{print $1}'
}
deployment-restart(){
  kubectl rollout restart deployment $1 -n $namespace  
}


$@
