# IOT-Enabled Multi-Sensor Fusion for Remote Assessment of vital Parameters

## Project Overview
A real-time health monitoring system that continuously captures vital parameters from multiple sensors remotely and triggers intelligent alerts on threshold breaches.

## Tech Stack
Microcontroller: XIAO ESP32-C3 (seeed studio)
Sensors: Temperature, Heart rate,SpO2
Cloud platform:ThingSpeak
Connectivity: ThingHTTP
Alerting: Google Apps Script ( email alerts)
Data Analysis: MATLAB

##What it Does
Simulaneously reads Temperatura,Heart Rate and SpO2 from multiple sensors
Fuses multi-sensor data and pushes to ThingSpeak cloud via ThingHTTp
Triggers automated email alerts when vitals cross safe threshold limits.
Logs all data to cloud for historical tracking 
Analyses and visualises vital trends using MATLAB

### Real World Application
Remote patient monitoring, elderly care, telemedicine and industrial health safety systems
