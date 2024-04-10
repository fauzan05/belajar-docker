docker network create --driver bridge mongonetwork

docker container create --name mongodb --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=zane --env MONGO_INITDB_ROOT_PASSWORD=zane mongo:latest

docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://zane:zane@mongodb:27017" mongo-express:latest