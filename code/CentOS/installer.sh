#!/bin/bash
sudo yum install -y epel-release.noarch
sudo yum install -y python-pip
sudo pip install requests
sudo yum install -y java
cd ../
cd extra-code
bash eula-fix.sh
bash service-handler.sh
sudo bash minecraft-server-download.sh
