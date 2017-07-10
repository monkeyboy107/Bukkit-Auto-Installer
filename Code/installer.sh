#!/bin/bash
#########################
#Programmer: Isaac Kerley
#Date: 9/16/2016
#Purpose: This will automatically make a minecraft bukkit server for anyone who wants to use it.
#########################
#Arrays
#Variables
########Main code########
#This will add the java repository and install it
cd=$(pwd) #This will assign cd as what the current directory
sudo apt-get update
sudo apt-get install python-software-properties -y #This will permit me to use add-apt-repository
sudo add-apt-repository ppa:webupd8team/java -y #This will add the webupd8team/java repository. This will permit installing Oracle's Java 
sudo apt-get update #This will update all the repos. Permitting installing Oracle's Java
sudo echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections #This will allow java to be installed without manually going through debconf
sudo apt-get install oracle-java8-installer -y #This will install Oracle's Java version 8
sudo apt-get install python-pip -y #This installs pip
sudo apt-get install python-dev libssl-dev libffi-dev -y
pip install -U pyopenssl==0.13.1 pyasn1 ndg-httpsclient requests[security] urllib3 six pyopenssl ndg-httpsclient pyasn1 cryptography
clear
wait 5
clear
python jar-getter.py
#This will create the path
bash dirMaker.sh
mv minecraft-server.jar ~/minecraft/server
sudo bash commandMaker.sh #This will start the commandMaker.sh script
cd ~/minecraft/server/ #this will go to the current user's home directory then minecraft then Server
#This will download the jar file then run it initially
minecraftServerShortcut #This will run the jar
#This makes eula auto agree for minecraft
cd $cd #This changes the current directory to the github downloaded
bash eula-fix.sh #This starts the script that starts changes the EULA file
