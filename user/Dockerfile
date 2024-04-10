FROM golang:1.22.2-alpine3.19
ENV APP_PORT=8080

RUN mkdir /app

RUN addgroup -S fzngroup
# membuat pengguna bernama fznuser tanpa password, tanpa shell login, dengan direktori home di /app, dan akan menempatkannya dalam grup fzngroup
RUN adduser -S -D -h /app fznuser fzngroup
# pengguna fznuser akan menjadi pemilik dan grup fzngroup akan menjadi grup pemilik untuk semua file dan direktori yang berada di dalam /app, termasuk file dan direktori yang ada secara rekursif di dalamnya
RUN chown -R fznuser:fzngroup /app

# set usernya fznuser (defaultnya root)
USER fznuser

COPY main.go /app

EXPOSE 8080
CMD go run /app/main.go