color_red="\e[1;31m"
color_blue="\e[1;34m"
color_green="\e[1;32m"
color_yellow="\e[1;33m"
color_reset="\e[0m"

color_bold="\e[1;37m"

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
	echo -e "$color_yellow->MySQL has already been installed,skipping next few operations.$color_reset"
else
	#install mysql
	sudo apt-get install mysql-server
	sudo mysql_secure_installation
fi

#install php and its environment
sudo apt-get install php libapache2-mod-php php-mysql

#############################< Vim Configuration >#################################
if [ ! -e /usr/bin/vim ]; then
	sudo apt-get install vim
fi

echo -e "$color_yellow->do you want to set VIM automaticlly?\n(you can still find your default vim setting file at: /ConfigureFiles/backups/vim.default.bak)$color_reset"
read -p "(Y/n): " sel

if [ "$sel" = Y ] || [ "$sel" = y ] ; then
	#start vim configuration
	echo -e "please confirm your device type: \e[1;36mServer\e[0m or$color_blue Desktop$color_reset ?"
	read -p "(enter S/s for server and D/d for desktop) :" device
	
	if [ "$device" = "s" ]||[ "$device" = "S" ]; then
		echo "$color_bold->device type: server selected.$color_reset"
		bash ./vimconfig_server/vimconfig.sh
		if [ $? -eq 0 ]; then
			echo -e "$color_green->vim plug configuration complete.$color_reset"
		fi
	elif [ "$device" = "D" ]||[ "$device" = "d" ]; then
		echo "$color_bold->device type: Desktop selected.$color_reset"
		bash ./vimconfig_desktop/vimconfig.sh
		if [ $? -eq 0 ]; then
			echo -e "$color_green->vim plug configuration complete.$color_reset"
		fi
	else
		echo -e "$color_red-input error,skipping this step.$color_reset"
	fi

elif [ "$sel" = "N" ]||[ "$sel" = "n"  ]; then
	echo -e "skipping..."
else
	echo -e "$color_red-input error,skipping...$color_reset"
fi
#############################< Not Necessary >####################################
#install ranger
sudo apt-get install ranger

#install a train just for fun
sudo apt-get install sl

#install neofetch to show system information
sudo apt-get install neofetch
neofetch

#################################################################################

