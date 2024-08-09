
## [Reserved namespace](https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/#initial-namespaces) (initial ns)


### `kube-system`
the namespace for objects created by the Kubernetes system.
- contains service accounts which are used to run the kubernetes controllers. These service accounts are granted significant permissions
- usually contains `kube-dns`, `kube-proxy`, `kubernetes-dashboard`
