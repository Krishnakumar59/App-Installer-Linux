sudo apt update && sudo apt upgrade -y

sudo apt install -y python3 python3-pip python

sudo apt install -y wget gdebi git curl vlc neofetch gnome-tweaks gnome-shell-extensions telegram-desktop
sudo apt install synaptic

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


# privacy
sudo apt update && sudo apt install tar tor curl python3 python3-scapy network-manager
git clone https://github.com/omer-dogan/kali-whoami
cd kali-whoami/
sudo make install
