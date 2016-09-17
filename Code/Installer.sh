#!/bin/bash
#This will add the java repository and install it
sudo apt-get install software-properties-common -y 
sudo apt-get install python-software-properties -y  
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update
sudo apt-get install oracle-java8-installer -y
#This will create the path
mkdir ~/minecraft/
mkdir ~/minecraft/Server/
mkdir ~/minecraft/Server/
sudo bash commandMaker.sh
cd ~/minecraft/Server/
#This will download the jar file then run it initially
wget https://www.getbukkit.org/files/craftbukkit-1.10.2-R0.1-SNAPSHOT-latest.jar
mv craftbukkit-1.10.2-R0.1-SNAPSHOT-latest.jar minecraft-server.jar 
java -jar minecraft-server.jar