#configuration file for Ubuntu 18.04 Server/Desktop
#update software
sudo apt-get update
sudo apt-get upgrade

#install python3 and pip
sudo apt-get install python3
sudo apt-get install python-pip

#install and activate ssh service
sudo apt-get install openssh-server
sudo service ssh start
sudo ufw allow openssh

#install and activate apache2 service
sudo apt-get install apache2
sudo service apache2 start
sudo ufw allow in "Apache Full"

#install mysql
sudo apt-get install mysql-server
sudo mysql_secure_installation

#install php and its environment
sudo apt-get install php libapache2-mod-php php-mysql

#############################< Not Necessary >####################################
#install ranger
sudo apt-get install ranger

#install a train just for fun
sudo apt-get install sl
sl

#install neofetch to show system information
sudo apt-get install neofetch
neofetch

#################################################################################
#configure vim setting
#clear configuration file (!update needed!)
echo "" > ~/.vimrc
echo "set nu" >> ~/.vimrc

