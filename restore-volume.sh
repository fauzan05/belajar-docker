docker volume create mongodatarestore
docker container run --rm --name ubunturestore --mount "type=bind,source=/Users/fauzannurhidayat/documents/belajar-docker/backup,destination=/backup" --mount "type=volume,source=mongodatarestore,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backup-1.tar.gz --strip 1"

docker container create --name mongodatarestore --publish 27019:27017 --mount "type=volume,source=mongodatarestore,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=zane --env MONGO_INITDB_ROOT_PASSWORD=zane mongo:latest