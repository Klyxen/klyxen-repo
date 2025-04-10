#!/bin/bash
set -e  # Exit on error

echo "📦 Downloading Klyxen .deb package..."
wget -O /tmp/klyxen.deb https://github.com/Klyxen/klyxen-repo/releases/download/v1.0/klyxen_1.0-1.deb

# Validate file
echo "🔍 Validating downloaded file..."
if file /tmp/klyxen.deb | grep -q "Debian binary package"; then
    echo "File is valid, proceeding to install..."
else
    echo "Downloaded file is invalid or incomplete. Aborting."
    exit 1
fi

# Install the package
echo "⚙Installing Klyxen..."
sudo dpkg -i /tmp/klyxen.deb || sudo apt-get install -f -y

echo "Klyxen installed successfully!"

