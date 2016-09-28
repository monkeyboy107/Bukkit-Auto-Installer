@@ -1,5 +1,14 @@
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
<<<<<<< HEAD
sudo apt-get update
sudo apt-get install software-properties-common -y 
sudo apt-get install python-software-properties -y  
@@ -15,7 +24,21 @@ mkdir ~/minecraft/Server/
sudo bash commandMaker.sh
cd ~/minecraft/Server/
clear
=======
sudo apt-get update #This will update all of the repos
sudo apt-get install software-properties-common -y #This will permit me to use add-apt-repository
sudo apt-get install python-software-properties -y #This will permit me to use add-apt-repository  
sudo add-apt-repository ppa:webupd8team/java -y #This will add the webupd8team/java repository. This will permit installing Oracle's Java 
sudo apt-get update #This will update all the repos. Permitting installing Oracle's Java
sudo echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections #This will allow java to be installed without manually going through debconf
sudo apt-get install oracle-java8-installer -y #This will install Oracle's Java version 8
#This will create the path
mkdir ~/minecraft/ #This will make the minecraft folder in the current user's home directory
mkdir ~/minecraft/Server/ #This will make the Server folder in the current user's home directory under minecraft
sudo bash commandMaker.sh #This will start the commandMaker.sh script
cd ~/minecraft/Server/ #this will go to the current user's home directory then minecraft then Server
>>>>>>> origin/master
#This will download the jar file then run it initially
wget https://www.getbukkit.org/files/craftbukkit-1.10.2-R0.1-SNAPSHOT-latest.jar
mv craftbukkit-1.10.2-R0.1-SNAPSHOT-latest.jar minecraft-server.jar 
java -jar minecraft-server.jar
wget https://www.getbukkit.org/files/craftbukkit-1.10.2-R0.1-SNAPSHOT-latest.jar #This will download minecraft server jar
mv craftbukkit-1.10.2-R0.1-SNAPSHOT-latest.jar minecraft-server.jar #This will rename the jar
minecraftServerShortcut #This will run the jar
