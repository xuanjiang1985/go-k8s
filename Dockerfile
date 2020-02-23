FROM golang:alpine AS build-env
ENV GO111MODULE=on
ENV CGO_ENABLED=0
ENV GOPROXY=https://goproxy.cn
ADD .  /go/src/app
WORKDIR /go/src/app
RUN go build -v -o /go/src/app/app main.go


FROM ubuntu
COPY --from=build-env /go/src/app/app /app/server
WORKDIR /app
EXPOSE 8080

CMD ["./server"]