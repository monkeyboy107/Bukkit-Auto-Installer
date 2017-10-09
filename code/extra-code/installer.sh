#!/bin/bash
echo installing minecraft server
cd ..
ls
python which-distro.py
distro=$(cat distro.txt)
if [ "centos" = "$distro" ]
then
    bash installer.sh
    cd CentOS

elif [ "ubuntu" = "$distro" ]
then
    bash installer.sh
    cd Ubuntu

elif [ "fedora" = "$distro" ]
then
    bash installer.sh
    cd Fedora

elif [ "debian" = "$distro" ]
then
    bash installer.sh
    cd Debian

fi
