color_red="\e[1;31m"
color_blue="\e[1;34m"
color_green="\e[1;32m"
color_yellow="\e[1;33m"
color_reset="\e[0m"

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

mysql -V &> /dev/null
if [ $? -eq 0 ]; then
	echo -e "$color_yellow >MySQL has already been installed,skipping next few operations.$color_reset"
else
	#install mysql
	sudo apt-get install mysql-server
	sudo mysql_secure_installation
fi

#install php and its environment
sudo apt-get install php libapache2-mod-php php-mysql

######################< Vim Editor configuration >################################
echo -e "$color_blue----------Start to configure Vim.----------$color_reset"
#configure vim setting
#try to access .vimrc file first.
cat ~/.vimrc &> /dev/null
if [ $? -eq 0 ]; then
	#if successfully accessed,then:
	cat ~/.vimrc | grep "set nu" &> /dev/null
	#if already set:
	if [ $? -eq 0 ]; then
		echo -e  "$color_yellow >Step 1 already done.$color_reset"
	#if it has not be set yet,then:
	else
		echo "set nu" >> ~/.vimrci
		echo -e "$color_green >set line number visiable.$color_reset"
	fi
#if cat fail to access ~/.vimrc:
else
	echo -e "$color_red >fail to access file: ~/.vimrc$color_reset"
fi

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

