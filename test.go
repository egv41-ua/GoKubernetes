package main

import (
	"fmt"
	"net/http"
	"os"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		hostname, _ := os.Hostname()
		fmt.Fprintf(w, "¡Hola!, Estas siendo atendido por el contenedor: %s", hostname)
	})

	fmt.Println("Escuchando en el puerto 8080")
	http.ListenAndServe(":8080", nil)
}
