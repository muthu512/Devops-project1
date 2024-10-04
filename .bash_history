ansible --version
$ sudo apt update
$ sudo apt install software-properties-common
$ sudo add-apt-repository --yes --update ppa:ansible/ansible
$ sudo apt install ansible
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
cd .ssh 
ssh-keygen 
•	cd  /etc/ansible 
cd  /etc/ansible 
ll
vi hosts
sudo vi hosts
ansible all -i hosts -m ping
cd\
ls ~/.ssh/
ssh-copy-id ubuntu@172.31.41.44
ssh-copy-id ubuntu@172.31.43.78
ssh-copy-id ubuntu@172.31.42.98
cat ~/.ssh/id_ed25519.pub
ssh-keygen -R 172.31.43.78
ssh-keygen -R 172.31.42.98
ssh-copy-id ubuntu@172.31.43.78
ssh-copy-id ubuntu@172.31.42.98
ansible all -i hosts -m ping
cat ~/.ssh/id_ed25519.pub
ansible all -i hosts -m ping
ansible all -i /etc/ansible/hosts -m ping
ssh-copy-id ubuntu@172.31.43.78
ssh-copy-id ubuntu@172.31.42.98
ssh ubuntu@172.31.43.78
ssh ubuntu@172.31.42.98
cat ~/.ssh/id_ed25519.pub
ssh ubuntu@172.31.43.78
ssh ubuntu@172.31.42.98
ansible all -i /etc/ansible/hosts -m ping
cat ~/.ssh/id_ed25519.pub
ssh ubuntu@172.31.43.78
ansible all -i /etc/ansible/hosts -m ping
ll
cd ansible
cd etc/
cd /etc
ll
cd ansible
ll
vi script1.sh
sudo vi script1.sh
sudo vi script2.sh
cd /etc/ansible/
sudo vi hosts
ll
sudo vi script3.sh
ansible all -i /etc/ansible/hosts -m ping
sudo vi playbook.yml
sudo ansible-playbook playbook.yml
cd /etc/ansible
sudo vi hots
sudo vi hosts
ansible all -i hosts -m ping
ansible-playbook playbook.yml
cd
jenkins --version
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl start docker
sudo systemctl enable docker
journalctl -xeu jenkins.service
java --version
sudo chown -R jenkins:jenkins /var/lib/jenkins
sudo systemctl start jenkins
journalctl -xeu jenkins.service
/var/log/jenkins/jenkins.log
sudo /var/log/jenkins/jenkins.log
ls -l /var/log/jenkins
sudo cat /var/log/jenkins/jenkins.log
sudo ls -l /var/lib/jenkins
sudo nano /etc/default/jenkins
sudo mkdir -p /var/log/jenkins
sudo touch /var/log/jenkins/jenkins.log
sudo chown jenkins:jenkins /var/log/jenkins/jenkins.log
sudo systemctl stop jenkins
sudo java -jar /usr/share/jenkins/jenkins.war
sudo find / -name "*jenkins*.log" 2>/dev/null
sudo systemctl start jenkins
dpkg -l | grep jenkins
sudo find / -name "jenkins.war" 2>/dev/null
sudo nano /etc/systemd/system/jenkins.service
ExecStart=/usr/bin/java -jar /usr/share/jenkins/jenkins.war
ExecStart=/usr/bin/java -jar /usr/share/java/jenkins.war
sudo nano /lib/systemd/system/jenkins.service
sudo systemctl daemon-reload
sudo systemctl start jenkins
sudo systemctl status jenkins.service
sudo journalctl -xeu jenkins.service
sudo tail -n 50 /var/log/jenkins/jenkins.log
sudo chown -R jenkins:jenkins /var/log/jenkins
sudo systemctl daemon-reload
sudo systemctl start jenkins
sudo systemctl status jenkins.service
sudo systemctl stop jenkins
sudo apt remove --purge jenkins
sudo rm -rf /var/lib/jenkins
sudo rm -rf /etc/default/jenkins
sudo rm -rf /var/log/jenkins
sudo apt update
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc   https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]"   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins -y
sudo apt update
sudo apt install fontconfig openjdk-17-jre
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
ping 16.171.250.20
sudo ufw status
sudo ufw allow 8080
sudo iptables -A INPUT -p tcp --dport 8080 -j ACCEPT
sudo nano /etc/default/jenkins
sudo cat /var/log/jenkins/jenkins.log
sudo systemctl restart jenkins
sudo /var/lib/jenkins/secrets/initialAdminPassword
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
ls -a
cd .ssh
cat authorized_keys
kk
ll
touch id_rsa
touch id_rsa.pub
cp authorized_keys id_rsa.pub
vi id_rsa
chmod 400 *
sudo systemctl restart jenkins
cd
git init
vi txt
