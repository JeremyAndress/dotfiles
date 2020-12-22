e_header()  { echo -e "\n\033[1m$@\033[0m"; }

e_header "Installing PC dependency..."

. ./install_package/openvpn.sh
. ./install_package/dbeaver.sh
. ./install_package/torrent_client.sh
. ./install_package/vlc.sh
. ./install_package/ffmpeg.sh
. ./install_package/https.sh
. ./install_package/docker.sh
. ./install_package/docker-compose.sh
. ./install_package/node.sh