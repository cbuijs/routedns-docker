# To build: 
#     docker build -t routedns .
#
# To run:
#     docker run -dit --rm --network host --name routedns routedns
#

FROM --platform=linux/amd64 golang:alpine as builder
WORKDIR "/"
RUN apk add --no-cache git
RUN GOOS=linux GOARCH=amd64 CGO_ENABLED=0 GO111MODULE=on go get -v github.com/folbricht/routedns/cmd/routedns

FROM --platform=linux/amd64 alpine:latest
WORKDIR "/"
RUN apk upgrade --update && apk add --no-cache tzdata && cp /usr/share/zoneinfo/Europe/Amsterdam /etc/localtime && apk del tzdata
EXPOSE 53/tcp 53/udp
RUN mkdir /cache
ADD routedns.toml /routedns.toml
COPY --from=builder /go/bin/routedns /routedns
RUN chmod 755 /routedns
ENTRYPOINT ["/routedns"]
CMD ["-l6", "/routedns.toml"]

