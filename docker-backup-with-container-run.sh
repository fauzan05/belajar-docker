docker container run --rm --name ubuntubackup --mount "type=bind,source=/Users/fauzannurhidayat/documents/belajar-docker/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" ubuntu:latest tar cvf /backup/backup-lagi.tar.gz /data

/backup/backup.tar.gz = nama file yang akan dibuat archive/backup
/data = direktori yang akan di archicve