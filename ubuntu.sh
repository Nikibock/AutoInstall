#!/bin/sh
echo "Someone app need a flutpak repository!" 

echo "List of install app: "
echo "
1.Audio & Video complect (Audacious,celluloid, gthumb)
2.Internet complect (transmission-gtk, vivaldi)
3.Utilit complect (Gparted, VirtualBox, engrampa, lxtask, gnome-screenshot, pantheon-calculator, popsicle) 
4.Video/Audo Edit complect (Kdenlive,audacity)
5.Document edit complect (onlyoffice, evince, foliate, VScode)
6.Exit
"

while :
do
  read INPUT_STRING
  case $INPUT_STRING in
	1)
		sudo apt install audacious celluloid gthumb 
		echo " " 
		echo "Select other item on list :"
		continue
		;;
	2)
		sudo apt install  transmission-gtk vivaldi
		echo " " 
		echo "Select other item on list :"
		continue
		;;

	3)
		sudo apt install gparted virtualbox engrampa lxtask gnome-screenshot pantheon-calculator popsicle 
		echo " " 
		echo "Select other item on list :"
		continue
		;;

	4)
		sudo apt install kdenlive audacity
		continue
		;;
	5)
		sudo apt install evince foliate
		flatpak uninstall flathub com.visualstudio.code
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