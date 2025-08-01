# Use official OpenJDK 21 image as base
FROM openjdk:21-jdk-slim

# Metadata
LABEL maintainer="krishkumar08j@gmail.com"

# Set working directory inside container
WORKDIR /app

# Copy the JAR file into the container
COPY target/devopsdemo-0.0.1-SNAPSHOT.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
