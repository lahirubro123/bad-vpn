#!/bin/bash

# Check if script is being run as root
if [[ "$EUID" -ne 0 ]]
  then echo "Please run this script as root"
  exit
fi

# Install dependencies
apt-get update && apt-get upgrade
sudo apt-get install pkg-config
apt-get install -y g++ cmake build-essential python-setuptools git
sudo apt-get install libnss3-dev
sudo apt-get install libnspr4-dev

# Clone BadVPN repository
git clone https://github.com/ambrop72/badvpn.git

# Prompt user to enter port number for BadVPN
read -p "Enter the port number for BadVPN: " badvpn_port

# Build and install BadVPN
cd badvpn
cmake . && make && make install
cd ..

# Create Systemd service file
cat << EOF > /etc/systemd/system/badvpn.service
[Unit]
Description=BadVPN UDP gateway
After=network.target

[Service]
ExecStart=/usr/local/bin/badvpn-udpgw --listen-addr 127.0.0.1:$badvpn_port ----max-clients 200
Restart=always

[Install]
WantedBy=multi-user.target
EOF

# Reload Systemd daemon and start BadVPN service
systemctl daemon-reload
systemctl start badvpn

# Enable BadVPN service to start automatically on boot
systemctl enable badvpn

echo "BadVPN successfully installed and configured!"
