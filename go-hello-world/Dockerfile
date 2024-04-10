FROM golang:1.22.2-alpine3.19
ENV APP_PORT=8080

RUN mkdir app
COPY main.go app

EXPOSE ${APP_PORT}

CMD go run app/main.go