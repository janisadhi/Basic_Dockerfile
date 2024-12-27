# Dockerfile Example: Running a Command in Alpine Linux

This project demonstrates how to create a simple Dockerfile that evaluates and prints a message using the current user in an Alpine Linux container.

## Prerequisites

Ensure you have the following installed on your system:
- Docker

## Steps to Build and Run

1. **Clone the Repository**
   ```bash
   git clone https://github.com/janisadhi/Basic_Dockerfile
   ```

2. **Navigate to the Project Directory**
   ```bash
   cd Basic_Dockerfile
   ```

3. **Build the Docker Image**
   Build the Docker image using the provided Dockerfile:
   ```bash
   sudo docker build -t alpine-linux:latest .
   ```

4. **Run the Docker Container**
   Start the container in detached mode with a custom name:
   ```bash
   sudo docker run -itd --name alpine alpine-linux:latest
   ```

5. **Check Running Containers**
   Verify that the container is running:
   ```bash
   sudo docker ps
   ```

6. **View Container Logs**
   Check the logs of the container to confirm the output:
   ```bash
   sudo docker logs alpine
   ```

   You should see the output:
   ```
   hello root
   ```

## Explanation of the Dockerfile

```dockerfile
FROM alpine:latest

WORKDIR /app

CMD ["/bin/sh", "-c", "echo hello $(whoami)"]
```

### Key Instructions:
- `FROM alpine:latest`: Specifies the base image as the latest version of Alpine Linux.
- `WORKDIR /app`: Sets the working directory inside the container to `/app`.
- `CMD ["/bin/sh", "-c", "echo hello $(whoami)"]`: Executes the shell command to evaluate and print `hello` followed by the current username (`root` by default).

This project is part of [Janis Adhikari's](https://roadmap.sh/projects/basic-dockerfile)  DevOps projects.