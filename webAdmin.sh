#!/bin/bash

echo "Bienvenidos al sistema de administracion de servidores: "

echo "1) Servidor Apache WEB"
echo "2) Servidor RED (DNS DHCP)"
echo "3) Servicios (FTP)"

read -p "Seleccione la opcion que desea: " num


case $num in
	1)
		cd resources/
		./administradorApache.sh
        break
		;;
	2)
		cd resources/
		break
		;;
	3)
        cd resources/
		;;
    *)
        echo "No valido"
        break
        ;;
esac