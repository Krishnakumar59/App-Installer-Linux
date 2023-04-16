#!/usr/bin/env bash
# -*- coding: utf-8 -*-

echo "-------------------------"
echo "| UPDATEING REPOSITORY  |"
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


echo "-------------------------"
echo "| FINSHED .............. |"
echo "-------------------------"

