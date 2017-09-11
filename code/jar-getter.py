#!/usr/bin/python

#impots
import requests
import urllib

class getWeb (object):
    def getLink(self, url):
        print "Getting link"
        r = requests.session().get(url)
        split = r.text.split('<a')
        split = split[20]
        split = str(split)
        split = split.split('"')
        url = split[1]
        r.close()
        print url
        return url
    def getJar(self, url):
        print "Getting jar link"
        r = requests.session().get(url)
        split = r.text.split('\n')
        split = split[104]
        split = split.split('"')
        print split
        split = split[1]
        url = split
        r.close()
        print url
        return url
    def download(self, jar):
        print "Downloading"
        urllib.urlretrieve(jar, "minecraft-server.jar")
        print "Done downloading"

def main():
    url = "https://getbukkit.org/"
    web = getWeb()
    url = web.getLink(url)
    jar = web.getJar(url)
    web.download(jar)
    #exit()

if __name__ == '__main__':
    main()
