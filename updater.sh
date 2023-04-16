echo "-------------------------"
echo "| UPDATING AND UPGRADING |"
echo "-------------------------"

# updating and upgrading
sudo apt update && sudo apt upgrade -y
sudo apt autoremove
echo "-------------------------"
echo "|  UPDATED SUCCESSFULLY  |"
echo "-------------------------"
# installing tools
sudo apt install git htop bpytop -y

# tools to be installed

# Zoom
echo"Installing Zoom..."
sudo apt install libgl1-mesa-glx libegl1-mesa libxcb-xtest0 ibus libxcb-cursor0
sudo apt --fix-broken install -y
wget https://zoom.us/client/5.14.0.1720/zoom_amd64.deb
sudo dpkg -i zoom_amd64.deb
sudo rm zoom_amd64.deb
sudo apt --fix-broken install
echo"Zoom Installed..."


# Brave
echo "-------------------------"
echo "|  BRAVE INSTALLING     |"
echo "-------------------------"
sudo apt install curl

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update
sudo apt install brave-browser -y


# Vscode
echo "Installing Vscode..."
wget https://az764295.vo.msecnd.net/stable/7f329fe6c66b0f86ae1574c2911b681ad5a45d63/code_1.77.0-1680085573_amd64.deb
sudo dpkg -i code_1.77.0-1680085573_amd64.deb
sudo rm code_1.77.0-1680085573_amd64.deb

echo "-------------------------"
echo "|  VSCODE SUCCESSFULLY  |"
echo "-------------------------"




