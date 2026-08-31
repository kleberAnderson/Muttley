# ===== Etapa 1: build (compila o projeto com Maven) =====
FROM maven:3.9-eclipse-temurin-21 AS build
WORKDIR /app

# Copia primeiro só o pom.xml para aproveitar cache de dependências
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Agora copia o código-fonte e compila
COPY src ./src
RUN mvn clean package -DskipTests

# ===== Etapa 2: runtime (imagem final, só com o JAR) =====
FROM eclipse-temurin:21-jre-alpine
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar

EXPOSE 8092
ENTRYPOINT ["java", "-jar", "app.jar"]
