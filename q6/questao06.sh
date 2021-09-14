#!/bin/bash

read -p "Digite uma senha: " pswd

if [ $(echo $pswd | grep -E "[0-9]") ];then
	if [ $(echo $pswd | grep -E "[A-Z]") ];then
		if [ $(echo $pswd | grep -E ".{8,}") ];then
			echo "Senha válida"
		else
			echo "Senha inválida"
		fi
	else
		echo "Senha inválida"
	fi
else
	echo "Senha inválida"

fi
