docker build -t zane01/command command

docker image inspect zane01/command

docker container create --name command zane01/command 

docker container start command

docker container logs command