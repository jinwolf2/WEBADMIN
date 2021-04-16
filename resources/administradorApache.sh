#!/bin/bash

clear

echo "Administrador de servidor"

echo "1) instalar Apache Server + 1º pagina web. "

echo "2) Nuevo Host Virtual "


read -p "Seleccione la opcion que desea: " num



case $num in
	1)
		cd Apache/
        ./ApacheInstall.sh
		 cd /home/$user/
		 ./webAdmin.sh
		;;
	2)
		cd Apache/
		./ApacheVH.sh
		cd /home/$user/
		 ./webAdmin.sh
		;;
    *)
        echo "No valido"
		cd /home/$user/
		 ./webAdmin.sh
        ;;
esac
