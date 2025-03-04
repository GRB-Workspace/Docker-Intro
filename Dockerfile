# Use OpenJDK 17 as base image
FROM openjdk:17-jdk-slim

# Set the working directory (Add application to /app) - Method 01
ADD target/Hello.jar app.jar

# Set the working directory (Add application to /app) - Method 02
# WORKDIR /app
# COPY target/Hello.jar /app/app.jar

# Expose the port that app will run on
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
