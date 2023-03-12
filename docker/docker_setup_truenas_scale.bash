#!/bin/bash
# This file contains the commands to install Docker on Debian buster
# source: https://docs.docker.com/engine/install/ubuntu/
# Enable apt
chmod +x /bin/apt*

# Remove the existing installation
sudo apt-get remove docker docker-engine docker.io containerd runc

# Install some required packages
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# Add Docker’s official GPG key
sudo mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Set up the stable repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker Engine
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Add the current user to the docker group
sudo groupadd docker
sudo usermod -aG docker $USER

# Test the installation
docker run hello-world