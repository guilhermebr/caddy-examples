FROM golang:1.7-wheezy

RUN go get github.com/mholt/caddy

WORKDIR /go/src/github.com/mholt/caddy/caddy

RUN go get ./...
RUN go install github.com/mholt/caddy/caddy

RUN which caddy

WORKDIR /app

EXPOSE 2015

CMD ["caddy"]
