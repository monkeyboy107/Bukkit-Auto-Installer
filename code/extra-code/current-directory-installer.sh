#!/bin/bash
#########################
#Programmer: Isaac Kerley
#Date: 9/16/2016
#Purpose: This will automatically make a minecraft bukkit server for anyone who wants to use it.
#########################
#Arrays
#Variables
#####################Main code###################
#This will add the java repository and install it
#sudo apt-get update #This will update all of the repos
#sudo apt-get install software-properties-common -y #This will permit me to use add-apt-repository
#sudo apt-get install python-software-properties -y #This will permit me to use add-apt-repository  
#sudo add-apt-repository ppa:webupd8team/java -y #This will add the webupd8team/java repository. This will permit installing Oracle's Java 
#sudo apt-get update #This will update all the repos. Permitting installing Oracle's Java
#sudo apt-get install oracle-java8-installer -y #This will install Oracle's Java version 8
#This will download the jar file then run it initially
#wget https://ci.getbukkit.org/job/CraftBukkit/lastSuccessfulBuild/artifact/craftbukkit-1.11.1.jar #This will download minecraft server jar
#mv craftbukkit-1.11.1.jar minecraft-server.jar #This will rename the jar
#java -jar minecraft-server.jar #This will run the jar
