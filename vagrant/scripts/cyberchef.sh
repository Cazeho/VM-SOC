#!/bin/bash

cd /opt

cat <<EOF > docker-compose.yml
version: "3"

services:
  cyber-chef:
    image: mpepping/cyberchef:latest
    ports:
      - "8000:8000"
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

#docker-compose up -d
