clear
read -p "Ingrese su dominio: " web

    sudo mkdir /var/www/$web

    sudo chown -R $USER:$USER /var/www/$web

    sudo chmod -R 755 /var/www/$web

clear

echo "creacion de Carpeta index html: "
echo "--------------------------------------------------------------------------------"

    sudo cp index.html /var/www/$web/

clear

echo "creacion de .conf"

    echo "Copie y pegue lo siguiente, Sustituya :<<your_domain>> por su dominio"

    echo "$web"

    cat ApacheVH.conf

    echo " "

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

    read -p "Para finalizar pulse enter"j