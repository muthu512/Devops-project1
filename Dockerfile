# Step 1: Use an official OpenJDK as the base image
FROM openjdk:11-jre-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the current directory contents into the container
COPY . /app

# Step 4: Build the application (if needed)
# RUN ./gradlew build

# Step 5: Define the command to run your application
CMD ["java", "-jar", "build/libs/myapp.jar"]

