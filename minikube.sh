#!/usr/bin/env bash
stop() {
	minikube stop
}
start() {
	minikube start
}
clean() {
	minikube delete
}
view() {
	minikube dashboard
}
install(){
    curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
    chmod +x minikube 
    sudo cp minikube /usr/local/bin/ 
    rm minikube
}

$1
