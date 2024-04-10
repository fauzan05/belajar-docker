package main

import (
	"fmt"
	"net/http"
	"os"
)

func main() {
	port := os.Getenv("APP_PORT")
	println("Run in new : " + port)
	println("Run in port : " + port)
	http.HandleFunc("/", HelloServer)
	http.ListenAndServe(":" + port, nil)
}

func HelloServer(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello World New")
}