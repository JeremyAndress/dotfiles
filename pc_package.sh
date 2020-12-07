e_header()  { echo -e "\n\033[1m$@\033[0m"; }

e_header "Installing PC dependency..."

. ./install_package/openvpn.sh
