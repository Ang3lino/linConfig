# Documentacion oficial
# https://dev.mysql.com/doc/mysql-apt-repo-quick-guide/en/
# https://dev.mysql.com/downloads/repo/apt/

# Instalacion rapida, sin actualizar a la ultima verison de mysql 
# https://support.rackspace.com/how-to/installing-mysql-server-on-ubuntu/

# ==============================================================================================
# https://www.youtube.com/watch?v=0o0tSaVQfV4   
# info de: https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-14-04

sudo apt update
sudo apt install mysql-server
# si tuvo un error y no pudo leer /etc/mysql/conf.d/ creelo haciendo
# sudo mkdir /etc/mysql/conf.d/

sudo apt install mysql-workbench

# Solucion a problemas --------------------------------------------------------------------------
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

# Problema: La unica forma de acceder al SGBD es a traves de sudo
# Fuente: https://askubuntu.com/questions/766334/cant-login-as-mysql-user-root-from-normal-user-account-in-ubuntu-16-04/801950
# Solucion: 
sudo mysql -u root
DROP USER 'root'@'localhost';
CREATE USER 'root'@'%' IDENTIFIED BY 'root';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
