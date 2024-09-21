FROM golang:1.23 AS builder
WORKDIR /src
COPY . .
RUN go build -o /bin/app .
ENTRYPOINT ["/bin/app"]
