#!/bin/bash
###################################################################################################################
#Programmer: Isaac Kerley
#Date: 9/16/2016
#Purpose: This will automatically make a minecraft bukkit server for anyone who wants to use it.
###################################################################################################################
#Arrays
#Variables
gd=$(pwd)                                                                                                         #This will assign gd as what the git directory
md=$(echo /opt/minecraft/server/)
#######################################Main code###################################################################
                                                                                                                  #This will add the java repository and install it
sudo apt-get update
sudo apt-get install python-software-properties -y                                                                #This will permit me to use add-apt-repository
sudo add-apt-repository ppa:webupd8team/java -y                                                                   #This will add the webupd8team/java repository. This will permit installing Oracle's Java 
sudo apt-get update                                                                                               #This will update all the repos. Permitting installing Oracle's Java
sudo echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections  #This will allow java to be installed without manually going through debconf
sudo apt-get install oracle-java8-installer -y                                                                    #This will install Oracle's Java version 8
sudo apt-get install python-pip -y                                                                                #This installs pip
sudo apt-get install python-dev libssl-dev libffi-dev -y
sudo pip install requests
sudo pip install pyopenssl ndg-httpsclient pyasn1
python ../jar-getter.py                                                                                           #This will download the jar file then run it initially
                                                                                                                  #This will create the path
bash ../extra-code/dir-maker.sh
mv minecraft-server.jar /opt/minecraft/server
sudo bash ../command-maker.sh                                                                                     #This will start the commandMaker.sh script
cd $md                                                                                                            #This will go to the current minecraft directory
minecraftServerShortcut                                                                                           #This will run the jar

cd $gd                                                                                                            #This changes the current directory to the github downloaded directory
cd extra-code
bash ../extra-code/eula-fix.sh                                                                                    #This starts the script that starts changes the EULA file
bash service-handler.sh
