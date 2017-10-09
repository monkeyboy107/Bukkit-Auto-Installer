#!/bin/bash
echo installing minecraft server
cd ..
python which-distro.py
distro=$(cat distro.txt)
if [ "centos" = "$distro" ]
then
    bash CentOS/install.sh

elif [ "ubuntu" = "$distro" ]
then
    bash Ubuntu/install.sh

elif [ "fedora" = "$distro" ]
then
    bash Fedora/install.sh

elif [ "debian" = "$distro" ]
then
    bash Debian/install.sh

fi
