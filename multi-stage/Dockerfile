FROM golang:1.22.2-alpine3.19 as builder
WORKDIR /app
# copy file main.go ke direktory workdir (/app)
COPY main.go .
# build go binary file si main.go, lalu hasil kompilasinya disimpan di direktori /app
RUN go build -o /app/main main.go

FROM alpine:3.19
WORKDIR /app
COPY --from=builder /app/main ./
ENTRYPOINT [ "/app/main" ]