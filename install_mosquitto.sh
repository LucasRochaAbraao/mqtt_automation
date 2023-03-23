#!/bin/bash

# Install Mosquitto MQTT broker and mosquitto-clients package for cli tools
sudo apt update
sudo apt install -y mosquitto mosquitto-clients

# Enable Mosquitto MQTT broker to run on startup
sudo systemctl enable mosquitto.service

# Configure Mosquitto MQTT broker to allow anonymous connections
sudo tee /etc/mosquitto/conf.d/default.conf > /dev/null <<EOF
allow_anonymous true
EOF

# Restart Mosquitto service to apply changes
sudo systemctl restart mosquitto.service
