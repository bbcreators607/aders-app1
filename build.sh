#!/bin/bash
set -e

# Update package list and install dependencies
sudo apt update
sudo apt install -y python3 python3-pip python3-setuptools python3-wheel git 

# Install Buildozer
pip3 install --upgrade buildozer

# Change to app directory
cd /path/to/kivy/app

# Initialize Buildozer
buildozer init

# Build APK
buildozer -v android debug

# Notify user
echo "Build process completed. APK is ready in the bin/ directory."