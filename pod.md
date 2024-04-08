# Pod
- Pods can be composed of 1+ containers
- containers in a pod share
  - **Storage**: the same execution environment, same volume
  - **network**: the same ip, port space(as such they can communicate via localhost but different port)
  - IPC namespace. This means they can communicate with each other using standard inter-process communication mechanisms (e.g. SystemV semaphores or POSIX shared memory)
  - **spec**: a specification for how to run the containers
- Each pod has a unique IP address in the Kubernetes cluster
  - Outbound routing by pod ip: Pod communicating with containers of the other pods has to be done in conjunction with the pod ip. 

## Use cases
- one pod for 1 application

## Service
- resolving problems: pod has random IP address assigned after restart
- Preserve a persistent endpoint for app in pod, for connectivity

IP:Port



## Basic structure
![image](https://github.com/davidkhala/k8s/assets/7227589/aa14de3c-408d-4484-bb0b-f983353c5385)

