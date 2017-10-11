#!/bin/bash
cp minecraft.service /etc/systemd/system
systemctl enable minecraft
systemctl start minecraft
