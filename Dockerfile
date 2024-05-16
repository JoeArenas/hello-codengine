# Stage 1: Build the application
FROM maven:3.9.6-sapmachine-21 AS build
WORKDIR /home/app
COPY pom.xml ./
COPY src ./src
RUN mvn -f pom.xml clean package

# Stage 2: Run the application
FROM openjdk:23-slim-bullseye
WORKDIR /home/application
COPY --from=build /home/app/target/hello-codengine-0.0.1-SNAPSHOT.jar ./app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/home/application/app.jar"]
