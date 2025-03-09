
FROM maven:3.8.5-openjdk-17-slim


WORKDIR /app

COPY pom.xml ./
RUN mvn dependency:go-offline -B


COPY src ./src

RUN mvn install -DskipTests

# Comando de inicio
CMD ["mvn", "spring-boot:run"]
