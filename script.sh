#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Updating package lists
echo "Updating package lists..."
apt-get update -y

# Installing Java
echo "Installing Java..."
apt-get install -y openjdk-17-jre

# Verifying Java installation
echo "Verifying Java installation..."
java --version

# Installing Docker
echo "Installing Docker..."
apt-get install -y docker.io

# Verifying Docker installation
echo "Verifying Docker installation..."
docker --version

# Adding Jenkins key and repository
echo "Adding Jenkins repository..."
wget -q -O /usr/share/keyrings/jenkins-keyring.asc https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" > /etc/apt/sources.list.d/jenkins.list

# Installing Jenkins
echo "Updating package lists for Jenkins..."
apt-get update -y
echo "Installing Jenkins..."
apt-get install -y jenkins

# Verifying Jenkins installation
echo "Verifying Jenkins installation..."
jenkins --version

# Enable and start services
echo "Enabling and starting services..."
systemctl enable docker
systemctl start docker
systemctl enable jenkins
systemctl start jenkins

# Print completion message
echo "Installation completed successfully!"

