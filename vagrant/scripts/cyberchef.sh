#!/bin/bash

cd /opt

cat <<EOF > docker-compose.yml
version: '3.8'
services:
  cyberchef:
    image: ghcr.io/gchq/cyberchef:latest
    ports:
      - "8080:8080"
    restart: unless-stopped
EOF

# Check if Docker is installed
if ! command -v docker &> /dev/null
then
    echo "Docker could not be found. Please install Docker and try again."
    exit 1
fi

# Check if Docker Compose is installed
if ! command -v docker-compose &> /dev/null
then
    echo "Docker Compose could not be found. Please install Docker Compose and try again."
    exit 1
fi

docker-compose up -d
