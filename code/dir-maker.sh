#!/usr/bin/env bash
sudo mkdir /opt/minecraft/ #This will make the minecraft folder in the current user's home directory
sudo mkdir /opt/minecraft/server/ #This will make the Server folder in the current user's home directory under minecraft
sudo chown -R minecraft:minecraft /opt/minecraft
