#!/bin/bash
##########################################
#Programmer: Isaac Kerley
#Date: 10/7/2016
#Purpose: This will add the commands minecraft-server and minecraft-serverShortcut
###########################################
#Arrays
#Variables
#################Main code#################
chmod +x minecraft-server                 #This permits the code to be executable
sudo cp minecraft-server /usr/bin         #This will make it an actual command that you can use
chmod +x minecraft-serverShortcut         #This permits the code to be executable
sudo cp minecraft-serverShortcut /usr/bin #This will make it an actual command that you can use
