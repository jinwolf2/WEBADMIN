#!/bin/bash

echo "Comienzo de la instalacion de Ubuntu Apache Server web"

echo "--------------------------------------------------------------------------------"

echo "instalacion de Apache"

echo "--------------------------------------------------------------------------------"

    sudo apt update

    sudo apt install apache2

clear

echo "abrimos Firewall"

echo "--------------------------------------------------------------------------------"


    sudo ufw allow 'Apache'


clear

echo "comprobacion de Apache "

    sudo systemctl status apache2 --no-pager

echo "--------------------------------------------------------------------------------"

read -p "Enter para continuar"

clear

echo "Crearemos Virtual Host"

echo "--------------------------------------------------------------------------------"


read -p "Ingrese su dominio: " web

    sudo mkdir /var/www/$web

    sudo chown -R $USER:$USER /var/www/$web

    sudo chmod -R 755 /var/www/$web

clear

echo "creacion de Carpeta index html: "
echo "--------------------------------------------------------------------------------"

    sudo nano /var/www/$web/index.html


echo "creacion de .conf"

    read -p "enter para editar la configuracion: "

    sudo nano /etc/apache2/sites-available/$web.conf


clear



echo "habilitar web"

    sudo a2ensite $web
    sudo a2dissite 000-default.conf
    sudo apache2ctl configtest

    echo "---------------------------------------------------------"

    clear

    

    clear
    
    echo "Mostrar Estado de servidor"
    echo "--------------------------------------------------------------------------------"


    sudo systemctl restart apache2 --no-pager
    sudo systemctl status apache2 --no-pager

    read -p "Para finalizar pulse enter"