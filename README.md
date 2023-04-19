# BadVPN Installation Script

This script automates the installation and configuration of BadVPN on Ubuntu 18, with the option to customize the listening port of the BadVPN UDP gateway.

## Installation

1. Clone this repository:

git clone https://github.com/your-username/badvpn-install-script.git


2. Run the installation script as root:

sudo ./badvpn_install.sh


3. Follow the prompts to enter the desired port number for BadVPN.

Enter the port number for BadVPN: 60000


4. After the script finishes running, BadVPN will be installed and configured to listen on the specified port.

## Usage

To start the BadVPN service:

systemctl start badvpn


To stop the BadVPN service:

systemctl stop badvpn


To enable BadVPN to start automatically on boot:

systemctl enable badvpn


## Contributing

If you find any issues with this script or have suggestions for improvements, please feel free to open an issue or submit a pull request.

## License

This script is licensed under the [MIT License](LICENSE). 

## Credits

This script was created by [your name]
