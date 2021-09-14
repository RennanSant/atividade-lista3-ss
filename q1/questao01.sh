#!/bin/bash


if test -e $1; then
	totallinhas=$(cat $1 | wc -l )
	if [ $2 -le $totallinhas ]; then
		cat -n $1 | grep $2 | cut -c8-
	else
		echo "Falha: o arquivo $1 possui apenas $totallinhas linhas."
	fi
else
	echo "Senhor usuário, para seu infortúnio, o arquivo não existe."

fi

