# Pod
- Pods can be composed of one or even a group of containers that share the same execution environment, the same volume, same ip, port space(as such they can communicate via localhost but different port), IPC namespace.
- Each pod has a unique IP address in the Kubernetes cluster
- Pod communicating with containers of the other pods has to be done in conjunction with the pod ip.


## Basic structure
![image](https://github.com/davidkhala/k8s/assets/7227589/aa14de3c-408d-4484-bb0b-f983353c5385)
