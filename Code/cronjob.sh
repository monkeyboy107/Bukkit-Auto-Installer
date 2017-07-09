#!/usr/bin/env bash
crontab -l > mycron
echo "@reboot minecraftServer">>mycron
crontab mycron
rm mycron
