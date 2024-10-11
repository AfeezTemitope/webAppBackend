# Use the official OpenJDK 23 image
FROM openjdk:23-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the Maven build output (JAR file) into the container
COPY target/weatherApp-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your app runs on
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]
