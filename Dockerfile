# 1. Imagen base: Usamos una versión ligera de Go (Alpine)
FROM golang:1.24-alpine

# 2. Carpeta de trabajo: Todo lo que se haga ocurrirá aquí dentro del contenedor
WORKDIR /app

# 3. Copiar archivos: Copiamos  código (main.go) al contenedor
COPY . .

# 4. Compilar: Crear el ejecutable llamado "servidor"
RUN go build -o servidor test.go

# 5. Puerto: Docker usará el puerto 8080
EXPOSE 8080

# 6. Arrancar: El comando que se ejecuta al iniciar el contenedor
CMD ["./servidor"]
