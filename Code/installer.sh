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
sudo apt-get update
sudo apt-get install software-properties-common -y 
sudo apt-get install python-software-properties -y  
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update
sudo apt-get install oracle-java8-installer -y
clear
wait 5
#This will create the path
mkdir ~/minecraft/
mkdir ~/minecraft/Server/
mkdir ~/minecraft/Server/
sudo bash commandMaker.sh
cd ~/minecraft/Server/
clear
#This will create the path
mkdir ~/minecraft/ #This will make the minecraft folder in the current user's home directory
mkdir ~/minecraft/Server/ #This will make the Server folder in the current user's home directory under minecraft
sudo bash commandMaker.sh #This will start the commandMaker.sh script
cd ~/minecraft/Server/ #this will go to the current user's home directory then minecraft then Server
#This will download the jar file then run it initially
wget https://www.getbukkit.org/files/craftbukkit-1.10.2-R0.1-SNAPSHOT-latest.jar #This will download minecraft server jar
mv craftbukkit-1.10.2-R0.1-SNAPSHOT-latest.jar minecraft-server.jar #This will rename the jar
minecraftServerShortcut #This will run the jar
