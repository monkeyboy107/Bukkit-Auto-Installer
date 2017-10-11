#!/bin/bash
sudo yum install -y epel-release.noarch
sudo yum install -y python-pip
sudo pip install requests
sudo yum install -y java
cd ../
cd extra-code
sudo bash minecraft-server-download.sh
bash eula-fix.sh
bash service-handler.sh

