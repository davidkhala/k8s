[wiki: expose endpoint](https://github.com/davidkhala/k8s/wiki/expose-endpoint)
# Proxy 模式
场景: dev test only：调试你的服务（如查看Dashboard），或者需要直接通过笔记本电脑去访问它们。
- proxy模式要求我们运行 kubectl 作为一个未认证的用户，因此我们不能用这种模式把服务暴露到 internet 或者在生产环境使用。
- 需要暴露ClusterIP服务的场景

进入proxy模式
`kubectl proxy --port=<8080>`


# ClusterIP Service
ClusterIP 服务是 Kubernetes 的默认服务。
- 集群内的其它应用都可以访问该服务。
- 集群外部无法访问
