# KK script to setup newly installed ubuntu based linux OS

# upgrading system
sudo apt update && sudo apt upgrade -y

# installing  programming stuffs
# python
sudo apt install -y python3 python3-pip python

# Jetbrain Toolbox Installation
wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.28.1.15219.tar.gz
# Extraction
tar -xf jetbrains-toolbox-1.28.1.15219.tar.gz
# change directory
cd jetbrains-toolbox-1.28.1.15219/
chmod +x jetbrains-toolbox
./jetbrains-toolbox


# java
sudo apt install openjdk-19-jdk openjdk-19-jre

# nodejs
sudo apt remove npm nodejs -y
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - && sudo apt-get install -y nodejs
node -v

# installing tools
sudo apt install -y wget gdebi git curl vlc neofetch gnome-tweaks gnome-shell-extensions telegram-desktop
sudo apt install -y tar tor curl python3 python3-scapy network-manager
sudo apt install synaptic ncdu -y
sudo apt-get install gnome-sushi -y
# Text-Extractor - OCR powered screen-capture tool to capture information instead of images 
# Link: https://github.com/dynobo/normcap
sudo apt install build-essential tesseract-ocr tesseract-ocr-eng libtesseract-dev libleptonica-dev wl-clipboard
pip install normcap
# you can set keyboard shortcut as of your choice


# vscode
wget https://az764295.vo.msecnd.net/stable/704ed70d4fd1c6bd6342c436f1ede30d1cff4710/code_1.77.3-1681292746_amd64.deb
sudo dpkg -i code_1.77.3-1681292746_amd64.deb
sudo rm code_1.77.3-1681292746_amd64.deb

#chrome
sudo apt install libu2f-udev -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
# sudo rm google-chrome-stable_current_amd64.deb

# Zoom 
# zoom dependencies to be installed first
sudo apt install -y libglib2.0-0 libgstreamer-plugins-base0.10-0 libxcb-shape0 libxcb-shm0 libxcb-xfixes0 libxcb-randr0 libxcb-image0 libfontconfig1 libgl1-mesa-glx libxi6 libsm6 libxrender1 libpulse0 libxcomposite1 libxslt1.1 libsqlite3-0 libxcb-keysyms1 libxcb-xtest0 ibus
wget https://cdn.zoom.us/prod/5.14.5.2430/zoom_amd64.deb
sudo dpkg -i zoom_amd64.deb
# remove zoom to free space
# sudo rm zoom_amd64.deb

# kali
sudo apt install -y whois nmap nikto john 
sudo apt-get install gnome-boxes -y

# --- need to fix
# privacy
# git clone https://github.com/Krishnakumar59/whoami-project.git
# cd kali-whoami/
# sudo make install


# wifi-hotspot qr
sudo add-apt-repository ppa:lakinduakash/lwh
sudo apt install linux-wifi-hotspot -y

# downloading OBS STUDIO
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install ffmpeg obs-studio -y


# |||||||||||||||||<<<---------DEVOPS--------->>>|||||||||||||||||||
# DevOps
# installing devops tools
sudo apt install git nano wget curl ansible -y

# Installing  Docker Kubernetes and minikube

#Docker and docker-desktop installation
echo Installing Docker

sudo apt install  ca-certificates  curl  gnupg  lsb-release
sudo apt install gnome-terminal

# removing old docker package

sudo apt remove docker-desktop

rm -r $HOME/.docker/desktop
sudo rm /usr/local/bin/com.docker.cli
sudo apt purge docker-desktop

echo "-------------------------"
echo "| SETTING UP DOCKER REPO |"
echo "-------------------------"

#setting up docker repo

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


sudo apt install pass uidmap qemu-system-x86 -y
sudo apt --fix-broken install
sudo dpkg -i docker-desktop-4.18.0-amd64.deb
# removing docker file to free up space  
rm docker-desktop-4.18.0-amd64.deb

echo "----------------------------------------------"
echo "|  DOCKER-DESKTOP IS INSTALLED  SUCCESSFULLY  |  |"
echo "----------------------------------------------"


echo "----------------------------------------------"
echo "|       MINIKUBE INSTALLTION IN-PROGRESS      |"
echo "----------------------------------------------"


curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

minikube start
kubectl get po -A
alias kubectl="minikube kubectl --"
minikube dashboard


############### JENKINS INSTALLATION ################

# installing jenkins
sudo apt update
sudo apt install -y fontconfig openjdk-11-jre
java -version

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins


sudo systemctl enable jenkins

sudo systemctl start jenkins


echo "Download jenkins war file and run"
# to run jenkins download jenkins.war file from jenkins site or you can download from this repo
# wget https://github.com/Krishnakumar59/App-Installer-Linux/blame/a9aeb0b54572226e2f9dfcfeffdaec994ccd48ac/devops/jenkins.war
# java -jar jenkins.war --httpPort=8081
# open browser and type this
# http://localhost:8081
# you will see administrator password in terminal scroll above 
