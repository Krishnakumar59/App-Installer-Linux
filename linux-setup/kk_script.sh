sudo apt update && sudo apt upgrade -y

sudo apt install wget git curl vlc neofetch bpytop gnome-tweaks gnome-shell-extensions telegram-desktop -y

# vscode
wget https://az764295.vo.msecnd.net/stable/704ed70d4fd1c6bd6342c436f1ede30d1cff4710/code_1.77.3-1681292746_amd64.deb
sudo dpkg -i code_1.77.3-1681292746_amd64.deb
sudo rm code_1.77.3-1681292746_amd64.deb

#chrome
sudo apt install libu2f-udev -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo rm google-chrome-stable_current_amd64.deb


# kali
sudo apt install whois nmap nikto john 
