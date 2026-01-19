notepad "$env:USERPROFILE\.wslconfig"
[user]default=devops
wsl -d Ubuntu-20.04 - u devops
ubuntu2004 config --default-user devops
ubuntu20.04 config --default-user devops
ls-l
ls -l
pwd
touch f1.txt
ls
ls -l
nano f1.txt
cat f1.txt
mkdir DIRECTORY
LS
ls
cd DIRECTORY/
PWD
pwd
touch f2.txt
nano f2.txt
mv f2.txt new.txt
ls
cd..
cd ..
mv f1.txt /DIRECTORY
sudo mv f1.txt /DIRECTORY
sudo -i
sudo -i passwd
clear
cd DIRECTORY/
ls
cd ..
ls
pwd
mv f1.txt DIRECTORY/
head f1.txt
cd ..
head new.text
cd DIRECTORY/
ls
clear
cd home/
exit
sudo useradd username
sudo apt update
sudo apt install -y ca-certificates curl gnupg lsb-release
cd /mnt/c/Users/Admin/Documents/test
chmod +x system_health.sh
./system_health.sh
cat system_health.log
ṭ
nano user_list.txt
nano create_users.sh
ls
chmod +x create_users.sh
sudo ./create_users.sh
whoami
What password do I use when I log in with devops username?
sudo ls
nano user_list.txt
nano create_users.sh
ls
chmod +x create_users.sh
sudo ./create_users.sh
cat /etc/passwd | grep -E 'alice|bob|charlie'
cat credentials.txt
nano backup.sh
chmod +x backup.sh
./backup.sh
chmod +x backup.sh
./backup.sh
ls
read -p read -p "Enter the directory path to backup: " DIR_PATH
if [ ! -d "$DIR_PATH" ]; then
nano todo.sh
chmod +x todo.sh
./todo.sh
todo.txt
cat todo.txt
nano packages.txt
nano install_packages.sh
chmod +x install_packages.sh
./install_packages.sh
cat install.log
nano text_process.sh
chmod +x text_process.sh
./text_process.sh
nano sample.txt
./text_process.sh
cd/ci-demo-python
/mnt/c/ci-demo-python
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/<your-username>/ci-demo-python.git
git push -u origin main
cd /mnt/c/ci-demo-python
pwd
git init
git config --global user.name "Shiwanee Pandey"
git config --global user.email "shiwaneepandey111@gmail.com"
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/<your-username>/ci-demo-python.git
git remote add origin https://github.com/<Shiwanee111>/ci-demo-python.git
git remote add origin https://github.com/shiwanee111/ci-demo-python.git
git push -u origin main
.github/workflows
pwd
mkdir -p .github/workflows
ls -a
ls .github
nano .github/workflows/ci.yml
git add .github/workflows/ci.yml
git commit -m "Add CI pipeline"
git push
sudo apt update
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee   /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt update
sudo apt install -y jenkins
sudo systemctl status jenkins
java -version
sudo apt update
java -version
sudo apt install -y openjdk-17-jre-headless
java --versipn
java --version
sudo systemctl restart jenkins
sudo systemctl status jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
sudo apt update
pip3 --version
sudo apt install -y python3-pip
pip3 --version
sudo systemctl status jenkins
sudo netstat -tulnp | grep java
sudo systemctl start jenkins
sudo systemctl status jenkins
