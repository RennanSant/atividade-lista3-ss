#!/bin/bash

function diret() {
	echo -e "LISTANDO DIRETÓRIOS\n"
	ls -ld */ | grep -E "[/]$| cut -d ' ' -f9"
}

function ate200b() {
	echo -e "LISTANDO ARQUIVOS <200BYTES\n"
	du -ab | grep -E "\b^([0-2][0][0]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\b"
}

function execs() {
	echo -e "LISTANDO ARQUIVOS EXECUTÁVEIS\n"
	ls -F | grep "*"
}

function links() {
	echo -e "LISTANDO LINKS\n"
	ls -l | grep -E "^[l]" | cut -c48-
}

function sscript() {
	echo -e "LISTANDO SHELL SCRIPTS\n" 
	ls -l | grep -E ".*\.sh" 
}


arg=$1
case $arg in
	"-a") diret;;
	"-b") execs;;
	"-c") links;;
	"-d") sscript;;
	"-e") ate200b;;	
esac
