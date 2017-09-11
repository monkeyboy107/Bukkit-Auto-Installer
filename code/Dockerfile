###########################################################
##                                                       ##
##                Bukkit Auto Installer                  ##
##                                                       ##
## https://github.com/monkeyboy107/Bukkit-Auto-Installer ##
##                                                       ##
##    Building: docker build -t monkeyboy107/bukkit .    ##
##                                                       ##
##                                                       ##
###########################################################

MAINTAINER Isaac Kerley <isaackerley@gmail.com>
FROM ubuntu:14.04
RUN apt-get update
RUN apt-get install -y wget unzip
RUN wget https://github.com/monkeyboy107/Bukkit-Auto-Installer/archive/master.zip -O /tmp/master.zip
RUN unzip /tmp/master.zip
RUN cd Bukkit-Auto-Installer-master/Code/ && sed -i '/minecraftServerShortcut/d' installer.sh
RUN cd Bukkit-Auto-Installer-master/Code/ && bash installer.sh
RUN chmod +x /Bukkit-Auto-Installer-master/Code/minecraftServerShortcut
RUN echo "eula=true" > /root/minecraft/Server/eula.txt
EXPOSE 25565 25575
CMD ["/Bukkit-Auto-Installer-master/Code/minecraftServerShortcut"]

