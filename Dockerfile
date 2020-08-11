FROM golang:alpine as builder

ARG APP_VERSION=0.1.0

COPY ./src/somaapp /go/src/somaapp

WORKDIR /go/src/somaapp

RUN go build somaapp

ENTRYPOINT ["/usr/local/bin/go", "run", "somapp", "5", "5"]

FROM scratch

COPY --from=builder /go/src/somaapp/somaapp /bin/

EXPOSE 8000

CMD ["somaapp", "5", "5"]