#!/bin/bash
echo installing minecraft server
cd ..
ls
bash command-maker.sh
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
