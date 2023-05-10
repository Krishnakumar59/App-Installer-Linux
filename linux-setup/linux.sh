
#!/usr/bin/env bash
# -*- coding: utf-8 -*-

echo "-------------------------"
echo "| UPDATING REPOSITORY  |"
echo "-------------------------"

sudo apt update

echo "-------------------------"
echo "| INSTALLING NEOFETCH    |"
echo "-------------------------"

sudo apt install neofetch

echo "-------------------------"
echo "| INSTALLING GNOME-TWEAKS|"
echo "-------------------------"

sudo apt install gnome-tweaks

echo "------------------------------"
echo "|   INSTALLING GNOME-SHUSHI  |"
echo "------------------------------"
# It is similar to quicklook in window. It open any kinds file with once spacebar click
sudo apt-get install gnome-sushi

# it is used to view where storage used
sudo apt install ncdu -y

# Text-Extractor - OCR powered screen-capture tool to capture information instead of images 
sudo apt install build-essential tesseract-ocr tesseract-ocr-eng libtesseract-dev libleptonica-dev wl-clipboard
pip install normcap





echo "-------------------------"
echo "|         FINSHED        |"
echo "-------------------------"
