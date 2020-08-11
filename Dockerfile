FROM gcr.io/cloud-builders/go

ARG APP_VERSION=0.1.0

WORKDIR /go/src

COPY ./src/somaapp .

ENTRYPOINT ["/usr/local/bin/go", "run", "somapp", "5", "5"]
