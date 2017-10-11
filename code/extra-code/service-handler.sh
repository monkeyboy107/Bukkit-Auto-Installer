#!/bin/bash
cp minecraft.service /etc/systemd/system
system enable minecraft
system start minecraft
