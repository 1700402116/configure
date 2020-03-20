color_red="\e[1;31m"
color_blue="\e[1;34m"
color_green="\e[1;32m"
color_yellow="\e[1;33m"
color_reset="\e[0m"

######################< Vim Editor configuration >################################
echo -e "$color_blue----------Start to configure Vim.----------$color_reset"

if [ -e ~/.vim/autoload/plug.vim ]; then
	echo -e "$color_green->vim-plug has already been cloned.$color_reset"
else
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

#make a backup first
cp ~/.vimrc ~/configure/backup/vimrc.default.bak
#update configuration
cp ~/configure/vimconfig_desktop/vimrc.vim ~/.vimrc

