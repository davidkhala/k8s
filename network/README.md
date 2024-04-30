# Proxy 模式
场景: dev test only
- 由于某些原因，你需要调试你的服务，或者需要直接通过笔记本电脑去访问它们。
- proxy模式要求我们运行 kubectl 作为一个未认证的用户，因此我们不能用这种模式把服务暴露到 internet 或者在生产环境使用。
- 需要暴露ClusterIP服务的场景

进入proxy模式
`kubectl proxy --port=<8080>`
