#!/bin/bash
#########################
#Programmer: Isaac Kerley
#Date: 9/16/2016
#Purpose: This will add the commands minecraftServer and minecraftServerShortcut
#########################
#Arrays
#Variables
########Main code########
chmod +x minecraftServer #This permits the code to be executable
sudo cp minecraftServer /usr/bin #This will make it an actual command that you can use
chmod +x minecraftServerShortcut #This permits the code to be executable
sudo cp minecraftServerShortcut /usr/bin #This will make it an actual command that you can use
