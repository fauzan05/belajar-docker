FROM alpine:3.19

RUN mkdir hello
# membuat file world.txt didalam forlder hello dan mengisinya dengan "Hello World"
# RUN echo "Hello World" > "hello/world.txt"

# menambahkan file yang berekstensi .txt dari folder text ke folder hello
# ADD text/*.txt hello

# mengcopy file ke direktory tertentu yang ada/sudah dibuat di alpine
COPY text/*.txt hello

CMD cat "hello/world.txt" "hello/zane.txt"

# jika errornya : ERROR: failed to solve: alpine:3.19: error getting credentials - err: exit status 1, out: `` maka lakukan ini di path ~ 
# sudo chown -R $(id -u):$(id -g) $HOME/.docker
# https://forums.docker.com/t/error-failed-to-solve-error-getting-credentials-err-exit-status-1-out/136124/2