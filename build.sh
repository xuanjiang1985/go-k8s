#!/bin/bash

# change the image tag before building

APP_VERSION=v0.4.5

docker build -t goappk8s:${APP_VERSION} .

docker login --username=zhuxmei520@163.com registry.cn-hangzhou.aliyuncs.com

docker tag goappk8s:${APP_VERSION} registry.cn-hangzhou.aliyuncs.com/zgang/goappk8s:${APP_VERSION}

docker push registry.cn-hangzhou.aliyuncs.com/zgang/goappk8s:${APP_VERSION}

# docker run -p 8080:8080 -d goappk8s:v0.4.5