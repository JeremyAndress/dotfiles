e_header()  { echo -e "\n\033[1m$@\033[0m"; }

e_header "Installing MySQL..."

apt-get -y install mysql-server mysql-client libmysqlclient-dev
mysql_secure_installation 
