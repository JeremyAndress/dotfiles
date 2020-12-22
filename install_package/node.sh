
apt-get --yes install nodejs

apt-get --yes install npm

mkdir -p  /usr/local/lib/node_modules/

chown -R $USER /usr/local/lib/node_modules

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
apt-get install yarn -y