#!/bin/bash
###################################################################################################################
#Programmer: Isaac Kerley
#Date: 9/16/2016
#Purpose: This will automatically make a minecraft bukkit server for anyone who wants to use it.
###################################################################################################################
#Arrays
#Variables
gd=$(pwd)                                                                                                         #This will assign gd as what the git directory
#######################################Main code###################################################################
                                                                                                                  #This will add the java repository and install it
sudo apt-get update
cd $gd
cd Debian
sudo bash java-adder.sh
sudo apt-get update                                                                                               #This will update all the repos. Permitting installing Oracle's Java
sudo apt-get install oracle-java8-installer -y                                                                    #This will install Java
sudo apt-get install python-pip -y                                                                                #This installs pip
sudo apt-get install python-dev libssl-dev libffi-dev -y
sudo pip install requests
sudo pip install pyopenssl ndg-httpsclient pyasn1
sudo bash ../command-maker.sh                                                                                     #This will start the commandMaker.sh script
cd $md                                                                                                            #This will go to the current minecraft directory
minecraftServerShortcut                                                                                           #This will run the jar

cd $gd                                                                                                            #This changes the current directory to the github downloaded directory
cd extra-code
bash eula-fix.sh                                                                                                  #This starts the script that starts changes the EULA file
bash service-handler.sh
