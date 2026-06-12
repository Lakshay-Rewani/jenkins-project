#!/bin/bash

# Update package list
sudo apt update -y

# Install Nginx
sudo apt install nginx -y

# Enable Nginx to start on boot
sudo systemctl enable nginx

# Start Nginx service
sudo systemctl start nginx

# Check Nginx status
sudo systemctl status nginx --no-pager

echo "Nginx installation completed successfully!"
echo "Access it using: http://$(hostname -I | awk '{print $1}')"
