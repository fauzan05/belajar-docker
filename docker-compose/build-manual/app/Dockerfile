FROM golang:1.22.0-alpine

ENV APP_PORT=8080

WORKDIR /app

COPY . .

EXPOSE ${APP_PORT}

CMD go run /app/main.go