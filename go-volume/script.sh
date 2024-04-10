docker build -t zane01/go-alpine go-volume

docker container create --name go-alpine -p 8080:8080 zane01/go-alpine

docker image inspect zane01/go-alpine

docker container start go-alpine

curl localhost:8080

docker container logs volume
# volume name a61007e7432f6f9f320340d7c4ac1a26fa7f948fdfcfe45e8127a8f45fddafba

docker container inspect volume