e_header()  { echo -e "\n\033[1m$@\033[0m"; }

e_header "Dbeaver Community Edition"

add-apt-repository --yes ppa:serge-rider/dbeaver-ce
apt-get --yes install dbeaver-ce