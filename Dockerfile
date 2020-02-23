FROM fuyufjh/go-alpine

WORKDIR /

ADD . /

EXPOSE 8080

CMD ["./goappk8s"]