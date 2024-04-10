FROM golang:1.22.0-alpine

ENV PROJECT_DIR=/app \
    GO111MODULE=on \
    CGO_ENABLED=0 \
    APP_PORT=8080

WORKDIR /app
RUN mkdir "/build"

COPY . .

RUN go get github.com/githubnemo/CompileDaemon
RUN go install github.com/githubnemo/CompileDaemon

EXPOSE ${APP_PORT}

ENTRYPOINT CompileDaemon -build="go build -o /build/app" -command="/build/app"