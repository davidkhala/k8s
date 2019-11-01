# k8s


## Notes

- [k8s post](https://www.freecodecamp.org/news/learn-kubernetes-in-under-3-hours-a-detailed-guide-to-orchestrating-containers-114ff420e882/)
- k8s is a disaster for p2p protocols, it is a very bad match. Great for monolithic microservice stacks, not much else.


## Pod
- Pods can be composed of one or even a group of containers that share the same execution environment, the same volume, same ip, port space(as such they can communicate via localhost but different port), IPC namespace.
- Each pod has a unique IP address in the Kubernetes cluster
- Pod communicating with containers of the other pods has to be done in conjunction with the pod ip.

## TODO
- kubeadm init:  
  [ERROR Swap]: running with swap on is not supported. Please disable swap
  https://github.com/kubernetes/kubeadm/issues/610