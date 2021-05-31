#!/bin/sh
echo "List of install app: "
menu(){
echo "
1.Audio & Video complect (Audacious,celluloid, gthumb)
2.Internet complect (transmission-gtk, vivaldi)
3.Document edit complect (onlyoffice, evince, foliate, visual-studio-code-bin)
4.Video/Audo Edit complect (Kdenlive,audacity)
5.Utilit complect (Gparted, VirtualBox, engrampa, gnome-screenshot, pantheon-calculator, popsicle)
6.ZSH shell (manjaro-zsh-config)
7+.Exit
"
}

next(){
	echo " " 
	echo "Select other item on list :"
}
positions=("Audio" "Internet" "Document" "Video edit" "Utils" "ZSH" "Quit")
select opt in "${positions[@]}"
do
	case $opt in
		"Audio")
			sudo pacman -S audacious celluloid gthumb
			menu
			next 
			continue
			;;
		"Internet")
			sudo pacman -S  transmission-gtk vivaldi
			menu
			next 
			continue
			;;

		"Document")
			sudo pacman -S evince foliate
			pacaur -S visual-studio-code-bin
			flatpak install flathub org.onlyoffice.desktopeditors
			menu
			next 
			continue
			;;

		"Video edit")
			sudo pacman -S kdenlive audacity
			menu
			next 
			continue
			;;
		"Utils")
			sudo pacman -S gparted virtualbox engrampa gnome-screenshot pantheon-calculator popsicle 
			pacaur -S virtualbox-ext-oracle
			menu
			next 
			continue
			;;
		"ZSH")	
			sudo pacman -S manjaro-zsh-config && cp .zshrc ~/  
			chsh -s /bin/zsh
			menu
			next 
			continue
			;;
		"quit")
			echo "You are select EXIT"
			exit 0
			;;
		*) echo "invalid option $REPLY"
			;;
	esac
done

echo "Thx"
