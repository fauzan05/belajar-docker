docker build -t zane01/add add

docker container create --name add zane01/add

docker container start add

docker contianer logs add