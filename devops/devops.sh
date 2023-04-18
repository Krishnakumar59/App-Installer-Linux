!#!/usr/bin/env bash
# -*- coding: utf-8 -*-

sudo apt update -y
sudo apt upgrade -y

sudo apt install git nano -y

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

 