e_header()  { echo -e "\n\033[1m$@\033[0m"; }

e_header "Installing OpenVpn..."

apt-get -y install openvpn easy-rsa
