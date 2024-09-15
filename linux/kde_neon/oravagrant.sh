
sudo apt install virtualbox-qt vagrant -y

# download a vagrant file
git clone https://github.com/oracle/vagrant-boxes

# download db
wget https://www.oracle.com/database/technologies/oracle12c-linux-12201-downloads.html#license-lightbox

#
FOLDER="12.2.0.1"
cp vagrant-boxes/OracleDatabase/$FOLDER .
cp linuxx64_12201_database.zip $FOLDER
cd $FOLDER

vagrant up
vagrant ssh

# now we are in the machine
sudo su - oracle
cd $HOME

./setPassword.sh Oracle12c
# sqlplus
#
# Enter user-name: sys as sysdba
# Enter password:

