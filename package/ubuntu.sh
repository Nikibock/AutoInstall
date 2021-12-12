#!/bin/sh
update_system(){
	echo "Обновляю сабжы"
	sudo apt update -y 
	sudo apt upgrade -y
}

setup_menu(){
echo "List of install app: "
echo "
1.Audio & Video complect (Audacious,celluloid, gthumb)
2.Internet complect (transmission-gtk, vivaldi)
3.Document edit complect (onlyoffice, evince, foliate, visual-studio-code-bin)
4.Video/Audo Edit complect (Kdenlive,audacity)
5.Utilit complect (Gparted, VirtualBox, engrampa, htop, gnome-screenshot, pantheon-calculator, popsicle)
Input word 'exit' for Exit 
"
}

update_system
setup_menu

while :
do
  read INPUT_INTEGERS
  case $INPUT_INTEGERS in
	1)
		sudo apt install audacious celluloid gthumb 
		echo " " 
		echo "Select other item on list :"
		setup_menu
		continue
		;;
	2)
		sudo apt install transmission-gtk vivaldi
		echo " " 
		echo "Select other item on list :"
		setup_menu
		continue
		;;

	3)	echo "Choose VS code install method:"
		echo -e  " 1.Native .deb from official site \n 2.Flatpak \n 3.Snap \n 4+.Skip install"
			read INPUT_CHOOSE
			case $INPUT_CHOOSE in
				1) 
					echo ".Deb file"
					wget  "https://code.visualstudio.com/sha/download?build=insider&os=linux-deb-x64" | bash
					sudo apt install  ~/*.deb
					;;
				2)	
					echo "Flatpak"
					flatpak install flathub com.visualstudio.code
					;;
				3)
					echo "Snap"
					snap install code
					;;
				
				*)
					echo "You are skip install vscode"
					;;
			esac
		sudo apt install evince foliate
		flatpak install flathub org.onlyoffice.desktopeditors
		echo " " 
		echo "Select other item on list :"
		continue
		;;
	4)
		sudo apt install kdenlive audacity
		echo " " 
		echo "Select other item on list :"
		setup_menu
		continue
		;;
	5)
		sudo apt install gparted virtualbox virtualbox-ext-pack engrampa htop gnome-screenshot popsicle 
		echo " " 
		echo "Select other item on list :"
		setup_menu
		continue
		;;
    "exit")
		echo "You are select EXIT"
		break
		;;
    *)
		echo "Input is incorrect"
		setup_menu
		continue
		;;
  esac
done
echo "Thx"
