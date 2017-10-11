#!/bin/bash
echo Installing minecraft server
sudo bash command-maker.sh
sudo bash user-add
cd ..
ls
python which-distro.py
distro=$(cat distro.txt)
if [ "centos" = "$distro" ]
then
    cd CentOS
    bash installer.sh

elif [ "ubuntu" = "$distro" ]
then
    cd Ubuntu
    bash installer.sh

elif [ "fedora" = "$distro" ]
then
    cd Fedora
    bash installer.sh

elif [ "debian" = "$distro" ]
then
    cd Debian
    bash installer.sh

fi
sudo bash minecraft-server-download.sh

