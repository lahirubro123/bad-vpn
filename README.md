# BadVPN Installation Script
This script automates the installation and configuration of BadVPN on Ubuntu 18, with the option to customize the listening port of the BadVPN UDP gateway.

## Prerequisites
##### To use this script, you need:

- A server running Ubuntu 18
- Access to the server as root or a user with sudo privileges
- Basic knowledge of running commands in a terminal

## Installation
##### Clone this repository:

`git clone https://github.com/lahirubro123/bad-vpn.git`

##### Run the installation script as root:

`sudo ./badvpn_install.sh`

##### Follow the prompts to enter the desired port number for BadVPN:

- Enter the port number for BadVPN: 7300

- After the script finishes running, BadVPN will be installed and configured to listen on the specified port.

#### Usage
To start the BadVPN service:

`systemctl start badvpn`

To stop the BadVPN service:

`systemctl stop badvpn`

To enable BadVPN to start automatically on boot:

`systemctl enable badvpn`

You can also check the status of the BadVPN service:

`systemctl status badvpn`

#### Customization
By default, the script listens on port 7300 for BadVPN. You can customize this by editing the BADVPN_PORT variable in the script before running it.

Alternatively, you can pass the port number as an argument when you run the script:

`sudo ./badvpn_install.sh 60000`

This will install and configure BadVPN to listen on port 60000.

#### Contributing
If you find any issues with this script or have suggestions for improvements, please feel free to open an issue or submit a pull request.

#### License
This script is licensed under the MIT License.

#### Credits
This script was created by [lahirubro123](http://https://github.com/lahirubro123 "lahirubro123") and is based on instructions from the official BadVPN repository.
