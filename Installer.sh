#!/bin/bash
#This will add the java repository and install it 
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer -y
#This will put the path in to place
mkdir minecraft
cd minecraft
mkdir server
cd server
mkdir world01
cd world01
#This will download the jar file then run it initially
wget download-minecraft-server #Replace the download-minecraft-server with the path to the server
mv jar-name minecraft-server.jar #Replace the jar-name with the jar name that will be on the path to the download
java -jar minecraft-server.jar
