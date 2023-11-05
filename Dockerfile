# 使用基于 Alpine 的 Golang 镜像作为基础镜像
FROM golang1.20:alpine

# 设置工作目录
WORKDIR /app

# 将项目代码复制到容器中
COPY . .

# 构建应用程序
RUN go build -o main .

# 暴露端口
EXPOSE 8888

# 运行应用程序
CMD ["./main"]
