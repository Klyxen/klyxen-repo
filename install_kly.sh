#!/bin/bash
echo "Downloading Klyxen package..."
wget https://github.com/Klyxen/klyxen-repo/raw/main/deb/klyxen_1.0-1.deb -O /tmp/klyxen.deb
echo "Installing Klyxen..."
sudo dpkg -i /tmp/klyxen.deb
sudo apt-get install -f
echo "Klyxen installed successfully!"
