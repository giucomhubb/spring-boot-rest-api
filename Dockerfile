# Usar una imagen de OpenJDK como base
FROM openjdk:17-jdk-slim

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar el archivo JAR desde la carpeta target
COPY target/*.jar app.jar

# Exponer el puerto donde corre la aplicación (8080 por defecto en Spring Boot)
EXPOSE 8080

# Comando para ejecutar la aplicación
CMD ["java", "-jar", "app.jar"]
