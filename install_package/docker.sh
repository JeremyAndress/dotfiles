

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88

architecture=$(dpkg --print-architecture)

echo "architecture $architecture"

if [ $architecture = "amd64" ]
then
    add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
elif [ $architecture = "armhf" ]
then
    add-apt-repository \
   "deb [arch=armhf] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
elif [ $architecture = "arm64" ]
then
    add-apt-repository \
   "deb [arch=arm64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
fi

apt-get install docker-ce docker-ce-cli containerd.io

gpasswd -a $USER docker
newgrp docker