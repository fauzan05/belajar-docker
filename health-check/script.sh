docker build -t zane01/health-check health-check
# host : container | 8080:8080
docker container create --name health-check --env APP_PORT=8080 -p 8080:8080 zane01/health-check

docker image inspect zane01/health-check

docker container start health-check

curl -f http://localhost:8080/

docker container inspect health