sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer -y
cd ~/Desktop
mkdir minecraft
cd minecraft
mkdir server
cd server
mkdir world01
cd world01
wget download-minecraft-server
mv jar-name minecraft-server.jar
java -jar minecraft-server.jar
