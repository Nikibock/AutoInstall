#!/bin/sh
echo "Someone app need a AUR repository!" 

echo "List of install app: "
echo "
1.Audio & Video complect (Audacious,celluloid, gthumb)
2.Edit complect (Kdenlive)
3.Utilit complect (Gparted, VirtualBox, engrampa, lxtask, gnome-screenshot, manjaro-zsh-config, pantheon-calculator, popsicle) 
4.Internet complect (transmission-gtk, vivaldi) 
5.Office (onlyoffice, evince, foliate)
6.Exit
"

while :
do
  read INPUT_STRING
  case $INPUT_STRING in
	1)
		sudo pacman -S audacious 
		sudo pacman -S celluloid gthumb 
		echo " " 
		echo "Select other item on list :"
		continue
		;;
	2)
		sudo pacman -S kdenlive 

		continue
		;;
	3)
		sudo pacman -S gparted virtualbox engrampa lxtask gnome-screenshot pantheon-calculator popsicle 
		sudo pacman -S pacaur 
		sudo pacaur -S virtualbox-ext-oracle
		sudo pacman -S manjaro-zsh-config && cp .zshrc ~/
		echo " " 
		echo "Select other item on list :"
		continue
		;;

	4)
		sudo pacman -S  transmission-gtk vivaldi
		echo " " 
		echo "Select other item on list :"
		continue
		;;
	5)
		sudo pacman -S evince foliate
		flatpak install flathub org.onlyoffice.desktopeditors
		echo " " 
		echo "Select other item on list :"
		continue
		;;
	*)
		echo "You are select EXIT"
		break
		;;
  esac
done
echo "Thx"