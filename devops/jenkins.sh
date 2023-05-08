sudo apt update
sudo apt install -y fontconfig openjdk-11-jre
java -version

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins


sudo systemctl enable jenkins

sudo systemctl start jenkins

# to run jenkins download jenkins.war file from jenkins site or you can download from this repo
java -jar jenkins.war --httpPort=8081
# open browser and type this
http://localhost:8081
# you will see administrator password in terminal scroll above 
