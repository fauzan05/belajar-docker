docker build -t zane01/arg argument --build-arg app=mainan # host : container | 8080:8080

docker container create --name go-argument --env APP_PORT=8080 -p 8080:8080 zane01/arg

docker image inspect zane01/arg

docker container start go-argument

curl localhost:8080

docker container exec -i -t go-argument /bin/sh
