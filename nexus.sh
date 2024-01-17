# Java must required
java -version
# java not installed use this
# sudo apt-get install openjdk-8-jdk
java -version
sudo apt install net-tools
cd /opt/
wget https://download.sonatype.com/nexus/3/nexus-3.64.0-04-unix.tar.gz
ls -l
tar -zvxf nexus-3.64.0-04-unix.tar.gz 
ls -la
adduser nexus
ls -la
chown -R nexus:nexus nexus-3.64.0-04
chown -R nexus:nexus sonatype-work
ls -la
vi nexus-3.64.0-04/bin/nexus.rc             # (run-as-user="nexus") 
# login to nexus user and try
su - nexus
/opt/nexus-3.64.0-04/bin/nexus start
ps -ef | grep nexus
tail -f /opt/sonatype-work/nexus3/log/nexus.log
# port is 8081
#sudo apt install docker.io
#sudo apt install docker-compose

# docker-compose.yml file for sonatype/nexus


version: "2"

services:
  nexus:
    image: sonatype/nexus
    volumes:
      - "nexus-data:/sonatype-work"
    ports:
      - "8081:8081"
  
volumes:
  nexus-data: {}
# docker-compose up -d
