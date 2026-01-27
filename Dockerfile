# 1. Imagen base: Usamos una versión ligera de Go (Alpine)
FROM golang:1.24-alpine

# 2. Carpeta de trabajo: Todo lo que hagamos ocurrirá aquí dentro del contenedor
WORKDIR /app

# 3. Copiar archivos: Copiamos tu código (main.go) al contenedor
COPY . .

# 4. Compilar: Creamos el ejecutable llamado "servidor"
RUN go build -o servidor test.go

# 5. Puerto: Le decimos a Docker que este contenedor usará el 8080
EXPOSE 8080

# 6. Arrancar: El comando que se ejecuta al iniciar el contenedor
CMD ["./servidor"]