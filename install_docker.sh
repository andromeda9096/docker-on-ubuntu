#!/bin/bash
echo "Bat dau cai dat..."
echo ""
echo "Updating Packages..."
echo ""
echo ""
sleep 2s

sudo apt update

echo ""
echo ""
echo "Install Prerequisite Packages..."
echo ""
echo ""
sleep 2s

sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

echo ""
echo ""
echo "Retrieving Signing Keys for Docker..."
echo ""
echo ""
sleep 2s

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo ""
echo ""
echo "Adding the Docker CE Repository..."
echo ""
echo ""
sleep 2s

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
apt-cache policy docker-ce

echo ""
echo ""
echo "Installing Docker-CE (Community Edition)..."
echo ""
echo ""
sleep 2s

sudo apt install docker-ce -y

# add current user to docker group so sudo isn't needed
echo ""
echo ""
echo "Attempting to add the currently logged in user to the docker group..."
echo ""
echo ""
sleep 2s

sudo usermod -aG docker ${USER}

# install docker-compose

echo ""
echo ""
echo "Installing Docker-Compose..."
echo ""
echo ""
sleep 2s

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo ""
echo ""
echo "Now you should log out and back in, or reboot your system."
echo ""
echo "Done...!!"
