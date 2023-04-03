install(){
  sudo snap install kubectl --classic
}
version(){
  kubectl version --client

}
$@
