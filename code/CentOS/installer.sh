#!/bin/bash
sudo yum install -y java
cd ../
cd extra-code
bash eula-fix.sh
bash service-handler.sh

