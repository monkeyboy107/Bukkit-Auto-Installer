#!/usr/bin/python

#impots
import requests
import urllib

class getWeb (object):
    def getLink(self, url):
        r = requests.session().get(url)
        split = r.text.split('<a')
        split = split[10]
        split = str(split)
        split = split.split('"')
        url = split[1]
        r.close()
        return url
    def getJar(self, url):
        r = requests.session().get(url)
        split = r.text.split('\n')
        split = split[6]
        split = str(split)
        split = split.split('"')
        url = split[3]
        r.close()
        return url

def main():
    url = "https://getbukkit.org/"
    web = getWeb()
    url = web.getLink(url)
    jar = web.getJar(url)
    exit()

if __name__ == '__main__':
    main()
