# Mosquitto MQTT Broker Installation and Message Publishing Scripts

This repository contains scripts for installing Mosquitto MQTT broker on a Raspberry Pi and publishing messages to different topics that Arduino and ESP32 devices can subscribe to.

## Installation Instructions

To install Mosquitto MQTT broker on your Raspberry Pi, make sure your system has updated repos (sudo apt update) and run the following command:

```bash
curl -sSL https://raw.githubusercontent.com/LucasRochaAbraao/mqtt_automation/main/install_mosquitto.sh | bash
```

This command will download and execute a shell script that installs Mosquitto MQTT broker on your Raspberry Pi, enables it to run on startup, and configures it to allow anonymous connections.
It also installs the `mosquitto_clients` package, for the `mosquitto_pub` cli tool.

## Message Publishing Scripts
This repository also includes scripts for publishing messages to different topics that Arduino and ESP32 devices can subscribe to. These scripts use the mosquitto_pub command-line tool to publish messages to the Mosquitto MQTT broker.

#### Example Script: Publish Message to Arduino
To publish a message to an Arduino listening for messages on topic "arduino/control", run the following command:

```bash
./publish-arduino.sh "Turn on the pump motor"
```
This command will publish the message "Turn on the pump motor" to the "arduino/control" topic, which the arduino is expecting and will handle the action of turning on the pump motor.

#### Example Script: Publish Message to ESP32
To publish a message to an ESP32 listening for messages on topic "esp32/sensor", run the following command:

```bash
./publish-esp32.sh "Sensor data: 24 C"
```
This command will publish the message "Sensor data: 24 C" to the "esp32/sensor" topic.
