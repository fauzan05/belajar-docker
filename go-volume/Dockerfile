FROM golang:1.22.2-alpine3.19
ENV APP_PORT=8080
ENV APP_DATA=/logs

RUN mkdir ${APP_DATA}
RUN mkdir app
COPY main.go app

VOLUME ${APP_DATA}
EXPOSE ${APP_PORT}

CMD go run app/main.go