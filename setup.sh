#!/bin/bash
#

if [[ $EUID != "0" ]] ; then
	echo " " 
	echo "$(tput setaf 6)[$(tput setaf 1)*$(tput setaf 6)]Solo puedes ejecutar con root."
	echo " "
	exit
fi

echo " "
echo "$(tput setaf 6)[$(tput setaf 1)-$(tput setaf 6)]$(tput setaf 6)[$(tput setaf 1)Instalando requerimientos necesarios en el sistema ...$(tput setaf 6)]"
echo " "
sleep 1
echo "$(tput setaf 6)[$(tput setaf 1)*$(tput setaf 6)]Updating ... "
apt update -y &> /dev/null
echo " "
echo "$(tput setaf 6)[$(tput setaf 1)*$(tput setaf 6)]Upgrading ... "
apt full-upgrade -y &> /dev/null
echo " "
echo "$(tput setaf 6)[$(tput setaf 1)*$(tput setaf 6)]Installing qrencode ... "
apt install qrencode -y &> /dev/null
echo " "
echo "$(tput setaf 6)[$(tput setaf 1)*$(tput setaf 6)]Installing Toilet ... "
apt install toilet -y &> /dev/null
echo " "
echo "$(tput setaf 6)[$(tput setaf 1)*$(tput setaf 6)]Installing DarkQR ... "
chmod +x DarkQR
cp DarkQR /usr/bin/
echo " "
sleep 1.5
echo "$(tput setaf 6)[$(tput setaf 3)*$(tput setaf 6)]Completado."
echo " "
