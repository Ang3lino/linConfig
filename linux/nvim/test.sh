#!/bin/bash

# chmod +x script.sh to allow system to eXecute the script


if dpkg -s software-properties-common ; then
    echo 'yes'
else
    echo 'no'
fi

#if ! [ dpkg -s software-properties-common ] ; then
#	sudo apt-get install software-properties-common # nos permite agregar repositorios
#fi

