FROM golang:1.22.2-alpine3.19

# menginstal aplikasi curl
RUN apk --no-cache add curl
RUN mkdir app
COPY main.go app

EXPOSE 8080

HEALTHCHECK --interval=5s --start-period=30s CMD curl -f http://localhost:8080/health
# gunakan ini
# CMD go run app/main.go
# atau ini
ENTRYPOINT [ "go", "run" ]
CMD [ "app/main.go" ]