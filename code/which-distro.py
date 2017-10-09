#!/usr/bin/python
import platform
os = 'unknown'
platform = platform.platform()
os = platform.split("-")
for i in range(len(os)):
    if os[i] == 'centos':
        os = 'centos'
        break
    elif os[i] == 'fedora':
        os = 'fedora'
        break
    elif os[i] == 'Ubuntu':
        os = 'ubuntu'
        break
    elif os[i]== 'debian':
        os = 'debian'
        break
if os != 'unknown':
    file = open('distro.txt', 'wr')
    file.write(os)
    print os
