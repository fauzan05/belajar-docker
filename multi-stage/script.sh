docker build -t zane01/multi-stage multi-stage
# host : container | 9090:9090
docker container create --name multi-stage --env APP_PORT=9090 -p 9090:9090 zane01/multi-stage

docker image inspect zane01/multi-stage

docker container start multi-stage

curl localhost:8080

docker container exec -i -t multi-stage /bin/sh
