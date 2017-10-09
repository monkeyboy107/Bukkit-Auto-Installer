#!/usr/bin/python
import platform
os = 'unknown'
platform = platform.platform()
os = platform.split("-")
for i in range(len(os)):
    if os[i] == 'centos':
        os = 'centos'
        break
    if os[i] == 'fedora':
        os = 'fedora'
        break
    if os[i] == 'Ubuntu':
        os = 'ubuntu'
        break
if os != 'unknown':
    file = open('distro.txt', 'wr')
    file.write(os)
    print os
