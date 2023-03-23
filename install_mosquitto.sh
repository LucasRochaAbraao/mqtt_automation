#!/bin/bash

# Install Mosquitto MQTT broker and mosquitto-clients package for cli tools
sudo apt update
sudo apt install -y mosquitto mosquitto-clients

# Add listener configuration
sudo tee /etc/mosquitto/conf.d/listener.conf >/dev/null <<EOF
listener 1883 0.0.0.0
protocol mqtt
EOF

# add configuration to allow anonymous connections
sudo tee /etc/mosquitto/conf.d/allow_anonymous.conf >/dev/null <<EOF
allow_anonymous true
EOF

# Start and enable Mosquitto MQTT broker to run on startup
sudo systemctl enable --now mosquitto.service
