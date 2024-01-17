# 1. Using apt command to install it
java -version
apt-get update
apt-get install maven -y
mvn -version





# 2. Install the maven using wget command
# cd /opt ; wget https://dlcdn.apache.org/maven/maven-3/3.9.1/binaries/apache-maven-3.9.1-bin.tar.gz
tar -zxvf apache-maven-3.9.1-bin.tar.gz
mv apache-maven-3.9.1 maven

vi /etc/profile.d/maven.sh
File content:

export M2_HOME=/opt/maven # path to your maven folder
export MAVEN_HOME=/opt/maven # again path to your maven folder
export PATH=$M2_HOME/bin/:$PATH
# chmod +x /etc/profile.d/maven.sh

# source /etc/profile.d/maven.sh
# mvn -version

