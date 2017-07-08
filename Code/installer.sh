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
sudo apt-get install python-software-properties -y #This will permit me to use add-apt-repository  
sudo add-apt-repository ppa:webupd8team/java -y #This will add the webupd8team/java repository. This will permit installing Oracle's Java 
sudo apt-get update #This will update all the repos. Permitting installing Oracle's Java
sudo echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections #This will allow java to be installed without manually going through debconf
sudo apt-get install oracle-java8-installer -y #This will install Oracle's Java version 8
clear
wait 5
clear
#This will create the path
mkdir ~/minecraft/ #This will make the minecraft folder in the current user's home directory
mkdir ~/minecraft/Server/ #This will make the Server folder in the current user's home directory under minecraft
sudo bash commandMaker.sh #This will start the commandMaker.sh script
cd ~/minecraft/Server/ #this will go to the current user's home directory then minecraft then Server
python jar-getter.py
#This will download the jar file then run it initially
minecraftServerShortcut #This will run the jar
#This makes eula auto agree for minecraft
cd $cd #This changes the current directory to the github downloaded
bash eula-fix.sh #This starts the script that starts changes the EULA file
