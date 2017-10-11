#!/bin/bash
md=$(echo /opt/minecraft/server/)

sudo bash dir-maker.sh
python ../jar-getter.py
bash ../extra-code/dir-maker.sh
mv minecraft-server.jar $md
sudo bash chown.sh
sudo chown minecraft:minecraft /opt/minecraft/server/minecraft-server.jar
