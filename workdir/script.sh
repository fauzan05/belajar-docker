docker build -t zane01/go-alpine workdir

docker container create --name go-workdir -p 8080:8000 zane01/go-alpine

docker image inspect zane01/go-alpine

docker container start go-workdir

curl localhost:8080

# melihat list workdir yang telah dibuat
docker container exec -i -t go-workdir /bin/sh