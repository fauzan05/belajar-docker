FROM golang:1.22.2-alpine3.19

WORKDIR /app
COPY main.go /app

EXPOSE 8080
# tidak perlu menggunakan /app/main.go karena sudah diatur menggunakan workdir
CMD go run main.go