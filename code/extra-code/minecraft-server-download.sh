#!/bin/bash
md=$(echo /opt/minecraft/server/)

sudo bash dir-maker.sh
python ../jar-getter.py                                                                                           #This will download the jar file then run it 
bash ../extra-code/dir-maker.sh
mv minecraft-server.jar $md

