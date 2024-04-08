# k8s

 * Overheard at KubeCon: "microk8s.status just blew my mind".

     https://microk8s.io/docs/commands#microk8s.status

## Notes

- [k8s post](https://www.freecodecamp.org/news/learn-kubernetes-in-under-3-hours-a-detailed-guide-to-orchestrating-containers-114ff420e882/)
- k8s is a disaster for p2p protocols, it is a very bad match. Great for monolithic microservice stacks, not much else.
- kubeadm@1.12.3 support upper limit is 18.06: https://github.com/kubernetes/minikube/issues/3323

## Pod
- Pods can be composed of one or even a group of containers that share the same execution environment, the same volume, same ip, port space(as such they can communicate via localhost but different port), IPC namespace.
- Each pod has a unique IP address in the Kubernetes cluster
- Pod communicating with containers of the other pods has to be done in conjunction with the pod ip.
