#! /bin/bash

clear
echo "Hello, what's your name?"
read name
echo "Hello, $name lets start the BASH script!"
echo "starting BASH script to update, upgrade, autoclean, and autoremove"
read -p "Press [enter]to continue"

echo ""
echo "Start update"
sudo apt update
read -p "Press [enter]to continue"

echo ""
echo "view update packages"
sudo apt list --upgradeable
read -p "Press [enter]to continue"

echo ""
echo "Do you want to do a full upgrade?(Y/n)"
read yesno
if [ $yesno == "y" ] || [ $yesno == "yes" ] || [ $yesno == "Y" ] || [ $yesno == "Yes" ] || [ $yesno == "YES" ]
then
echo ""
echo "Yes, we want a full upgrade, upgrade is starting now"
sudo apt upgrade
read -p "Press [enter] to continue"
else
echo "We are NOT doing full upgrade, you might want to do a selective upgrade on your own"
fi

echo ""
echo "Start autoclean"
sudo apt autoclean
read -p "Press [enter]to continue"

echo ""
echo "Start autoremove"
sudo apt autoremove
read -p "Press [enter]to continue"

echo ""
echo "all done!"
read -p "Press [enter]to continue"
clear

