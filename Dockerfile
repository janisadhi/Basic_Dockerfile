FROM alpine:latest

WORKDIR /app

CMD ["/bin/sh", "-c", "echo hello $(whoami)"]