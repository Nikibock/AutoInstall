#!/bin/sh
echo "Someone app need a AUR repository!" 

echo "List of install app: "
echo "
1.Audio & Video & Document complect (Audacious,celluloid, gthumb, evince, foliate)
2.Edit complect (Kdenlive)
3.Utilit complect (Gparted, VirtualBox, engrampa, lxtask, gnome-screenshot, manjaro-zsh-config, pantheon-calculator) 
4.Internet complect (transmission-gtk, vivaldi) 
5.Office (onlyoffice)
6+.Exit
"

while :
do
  read INPUT_STRING
  case $INPUT_STRING in
	1)
		sudo pacman -S audacious celluloid gthumb evince foliate
		continue
		;;
	2)
		sudo pacman -S kdenlive 
		continue
		;;
	3)
		sudo pacman -S gparted virtualbox engrampa lxtask gnome-screenshot pantheon-calculator
		sudo pacman -S pacaur 
		sudo pacaur -S virtualbox-ext-oracle
		sudo pacaur -S manjaro-zsh-config && cp .zshrc ~/
		continue
		;;

	4)
		sudo pacman -S  transmission-gtk vivaldi
		continue
		;;
	5)
		flatpak install flathub org.onlyoffice.desktopeditors
		continue
		;;
	*)
		echo "Sorry, I don't understand"
		break
        ;;
  esac
done
echo "Thx"