#
# https://dev.mysql.com/doc/mysql-apt-repo-quick-guide/en/
# https://dev.mysql.com/downloads/repo/apt/

# ==============================================================================================
# https://www.youtube.com/watch?v=0o0tSaVQfV4   
# info de: https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-14-04

sudo apt update
# con este comando podra ejecutar mysql -u root -p
sudo apt install mysql-server
# si tuvo un error y no pudo leer /etc/mysql/conf.d/ creelo haciendo
# sudo mkdir /etc/mysql/conf.d/

sudo apt install mysql-workbench

# si instala xampp despues quiza no pueda conectarse a phpmyadmin, la vida lo odia, si es el caso
# para arreglar esto modifique el siguiente archivo
# /opt/lampp/phpmyadmin/config.inc.php
# y cambie las siguientes configuraciones
# $cfg['Servers'][$i]['password'] = ''; 
# a
# $cfg['Servers'][$i]['password'] = 'TU_CONTRASENA_CON_LA_QUE_ACCEDES_A_MYSQL_COMMAND_LINE';
# esto estaba comentado como
# //$cfg['Servers'][$i]['host'] = 'localhost';
# descomentelo y ponga la direccion ip
# $cfg['Servers'][$i]['host'] = '127.0.0.1';
# y funciona, testeado en Kubuntu 16, no hay necesidad de prender MySQL de Xampp
