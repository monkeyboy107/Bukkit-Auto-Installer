#!/bin/bash
#This will add the java repository and install it 
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer -y
#This will download the jar file then run it initially
wget https://www.getbukkit.org/files/craftbukkit-1.10.2-R0.1-SNAPSHOT-latest.jar
mv craftbukkit-1.10.2-R0.1-SNAPSHOT-latest.jar minecraft-server.jar
java -jar minecraft-server.jar
