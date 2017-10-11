#!/bin/bash
##########################################
#Programmer: Isaac Kerley
#Date: 10/7/2016
#Purpose: This will add the commands minecraft-server and minecraft-serverShortcut
###########################################
#Arrays
#Variables
#################Main code#################
echo Making commands
chmod +x minecraft-server                  #This permits the code to be executable
sudo cp minecraft-server /usr/bin          #This will make it an actual command that you can use
chmod +x minecraft-server-shortcut         #This permits the code to be executable
sudo cp minecraft-server-shortcut /usr/bin #This will make it an actual command that you can use
chmod +x minecraft-stop
sudo cp minecraft-stop /usr/bin
