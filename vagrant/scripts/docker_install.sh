#!/bin/bash

# Update the apt package index
sudo apt update -y

# Install packages to allow apt to use a repository over HTTPS
sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Set up the stable repository for Docker
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Update the apt package index (again)
sudo apt update -y

# Install the latest version of Docker CE and containerd
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Add the current user to the Docker group to run Docker commands without sudo
sudo usermod -aG docker $USER

# Install Docker Compose
# Check the latest release at https://github.com/docker/compose/releases and update the version accordingly
DOCKER_COMPOSE_VERSION="1.29.2"
sudo curl -L "https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Apply executable permissions to the Docker Compose binary
sudo chmod +x /usr/local/bin/docker-compose
