FROM ubuntu:latest
LABEL authors="houda"

# Use an official OpenJDK runtime as the base image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

COPY target/WalletService-0.0.1-SNAPSHOT.jar app.jar


EXPOSE 8020


# Run the Config Server application
ENTRYPOINT ["java", "-jar", "app.jar"]
