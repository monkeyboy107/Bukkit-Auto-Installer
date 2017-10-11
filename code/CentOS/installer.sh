#!/bin/bash
sudo yum install -y epel-release.noarch
sudo yum install pip
sudo yum install -y 
sudo pip install requests
sudo yum install -y java
cd ../
cd extra-code
bash eula-fix.sh
bash service-handler.sh

