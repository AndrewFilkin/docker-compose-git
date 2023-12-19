# Use the official Go image as a base image
FROM golang:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the local package files to the container's working directory
COPY ./src .

# Install any dependencies if needed
# RUN go mod download

# Set environment variables
ENV PORT=8080

# Expose the port the app runs on
EXPOSE $PORT

# Command to run the application
CMD ["go", "run", "main.go"]
