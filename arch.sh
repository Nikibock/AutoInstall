#!/bin/sh
echo "List of install app: "
echo "
1.Audio & Video complect (Audacious,celluloid, gthumb)
2.Internet complect (transmission-gtk, vivaldi)
3.Document edit complect (onlyoffice, evince, foliate, visual-studio-code-bin)
4.Video/Audo Edit complect (Kdenlive,audacity)
5.Utilit complect (Gparted, VirtualBox, engrampa, gnome-screenshot, pantheon-calculator, popsicle)
6.ZSH shell (manjaro-zsh-config)
7+.Exit
"

while :
do
  read INPUT_INTEGERS
  case $INPUT_INTEGERS in
	1)
		sudo pacman -S audacious celluloid gthumb 
		echo " " 
		echo "Select other item on list :"
		continue
		;;
	2)
		sudo pacman -S  transmission-gtk vivaldi
		echo " " 
		echo "Select other item on list :"
		continue
		;;

	3)
        sudo pacman -S evince foliate
		pacaur -S visual-studio-code-bin
		flatpak install flathub org.onlyoffice.desktopeditors
		echo " " 
		echo "Select other item on list :"
		continue
		;;

	4)
		sudo pacman -S kdenlive audacity
		echo " " 
		echo "Select other item on list :"
		continue
		;;
	5)
		sudo pacman -S gparted virtualbox engrampa gnome-screenshot pantheon-calculator popsicle 
		pacaur -S virtualbox-ext-oracle
		echo " " 
		echo "Select other item on list :"
		continue
		;;
	6)	
    	sudo pacman -S manjaro-zsh-config && cp .zshrc ~/  
		chsh -s /bin/zsh
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
