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
