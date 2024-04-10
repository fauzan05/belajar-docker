FROM golang:1.22.2-alpine3.19

ARG app=mainan

RUN mkdir app
COPY main.go app
RUN mv app/main.go app/${app}.go

EXPOSE 8080
# data dari arg app harus disimpan ke env karena arg dieksekusi saat proses build, bukan saat container dijalankan
ENV app=${app}
CMD go run app/${app}.go