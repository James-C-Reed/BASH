#!/bin/bash
clear
echo "Hello, welcome to BASH updater!"
sudo apt update
sudo apt upgrade -y
sudo apt autoclean
sudo apt autoremove

