# flameshot - to take screenshot
sudo apt install flameshot
# to run -> /usr/bin/flameshot gui
# linux wifi-hotspot
sudo add-apt-repository ppa:lakinduakash/lwh
sudo apt install linux-wifi-hotspot

# obs studio
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install ffmpeg obs-studio -y


# sublime installation
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

# warp cli installation
sudo apt install gnupg2 libnss3-tools
wget https://pkg.cloudflareclient.com/uploads/cloudflare_warp_2023_3_398_1_amd64_ddd2a223f7.deb

sudo dpkg -i cloudflare_warp_2023_3_398_1_amd64_ddd2a223f7.deb
# register first before use read/mark all agreements 
warp-cli register 
# to connect 
warp-cli connect


