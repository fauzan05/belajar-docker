docker build -t zane01/go-alpine go-hello-world

docker container create --name go-alpine -p 8080:8080 zane01/go-alpine

docker image inspect zane01/go-alpine

docker container start go-alpine

curl localhost:8080