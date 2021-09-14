#!/bin/bash

read -p "Digite um endereço IP: " ipaddress
oct1=$(echo $ipaddress | cut -d "." -f 1)
oct2=$(echo $ipaddress | cut -d "." -f 2)
oct3=$(echo $ipaddress | cut -d "." -f 3)
oct4=$(echo $ipaddress | cut -d "." -f 4)

for i in $oct1 $oct2 $oct3 $oct4; do
	dec=$i
	while [ $dec -gt 0 ]; do
		resto=$(( $dec%2 ))
		if [ $resto -gt 0 ];then
			bin="1""$bin"
		else
			bin="0""$bin"
		fi
		dec=$(( $dec/2 ))
	done
	bin=".""$bin"
done

#echo $bin

bin1=$(echo $bin | cut -d "." -f 5)
bin2=$(echo $bin | cut -d "." -f 4)
bin3=$(echo $bin | cut -d "." -f 3)
bin4=$(echo $bin | cut -d "." -f 2)

echo 'Octeto #1: '"$oct1 em binário $bin1"
echo 'Octeto #2: '"$oct2 em binário $bin2"
echo 'Octeto #3: '"$oct3 em binário $bin3"
echo 'Octeto #4: '"$oct4 em binário $bin4" 
#echo $bin1 $bin2 $bin3 $bin4
