FROM golang:alpine AS build-env
ENV GO111MODULE=on
ENV CGO_ENABLED=0
ENV GOPROXY=https://goproxy.cn
ADD .  /go/src/app
WORKDIR /go/src/app
RUN go build -v -o /go/src/app/app main.go


FROM ubuntu
ENV GIN_MODE=release
COPY --from=build-env /go/src/app/app /app/server
ADD config.yaml /app
WORKDIR /app
EXPOSE 8080

CMD ["./server"]