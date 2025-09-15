#!/bin/bash

echo "Updating system..."
sudo apt update && sudo apt upgrade -y

echo "Installing Docker..."
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker

echo "Installing Wireshark..."
sudo apt install wireshark -y
sudo usermod -aG wireshark $(whoami)

echo "Docker and Wireshark installed!"
echo "Please logout and log back in for group changes to take effect."
