docker build -t zane01/go-alpine user
# host : container | 9090:9090
docker container create --name go-user --env APP_PORT=9090 -p 9090:9090 zane01/go-alpine

docker image inspect zane01/go-alpine

docker container start go-user

curl localhost:8080

docker container exec -i -t user /bin/sh

whoami