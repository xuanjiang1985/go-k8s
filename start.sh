# change the image tag before building

docker build -t goappk8s:v0.4 .

docker login --username=zhuxmei520@163.com registry.cn-hangzhou.aliyuncs.com

docker tag goappk8s:v0.4 registry.cn-hangzhou.aliyuncs.com/zgang/goappk8s:v0.4

docker push registry.cn-hangzhou.aliyuncs.com/zgang/goappk8s:v0.4