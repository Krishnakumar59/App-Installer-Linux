!#!/usr/bin/env bash
# -*- coding: utf-8 -*-

sudo apt update -y
sudo apt upgrade -y

sudo apt install git nano wget curl -y


#########Docker and docker-desktop installation ############
# Docker

sudo apt install  ca-certificates  curl  gnupg  lsb-release
sudo apt install gnome-terminal

# removing old docker package

sudo apt remove docker-desktop

rm -r $HOME/.docker/desktop
sudo rm /usr/local/bin/com.docker.cli
sudo apt purge docker-desktop

echo "-------------------------"
echo "| SETTING UP DOCEKR REPO |"
echo "-------------------------"

setting up docker repo

sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg
    
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  


echo "----------------------------"
echo "| INSTALLING DOCKER ENGINE |"
echo "----------------------------"
 # Installing docker engine
  
  sudo apt-get update
  
  sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin  
  
  
 #creating docker group
 sudo groupadd docker

 sudo chown root:docker /var/run/docker.sock
 
 sudo usermod -aG docker $USER

 #  verifying docker is installed or not
echo "-------------------------------------------"
echo "|  VERIFYING DOCKER IS INSTALLED OR NOT   |"
echo "-------------------------------------------"

# running hello-world in docker to check whether it is installed correctly or not
sudo docker run hello-world


# installing docker-desktop
# downloading docker desktop package
wget https://desktop.docker.com/linux/main/amd64/docker-desktop-4.18.0-amd64.deb


sudo apt install pass uidmap
sudo dpkg -i docker-desktop-4.18.0-amd64.deb
# removing docker file to free up space  
rm docker-desktop-4.18.0-amd64.deb

echo "----------------------------------------------"
echo "|  DOCKER-DESKTOP IS INSTALLED  SUCCESSFULLY  |  |"
echo "----------------------------------------------"




#######################################