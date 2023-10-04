install(){
  sudo snap install kubectl --classic
}
version(){
  kubectl version --client

}
logs(){
  kubectl logs --since=1h --tail=200 $1
}
$@
