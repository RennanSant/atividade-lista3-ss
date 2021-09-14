#!/bin/bash

#while read linha ;do echo $linha ; done < $1

while read linha ;do
		if [ $(echo $linha | grep -E --color ".+\@.+\..+") ]; then
		echo "OK: $linha"
	else
		echo "FAIL: $linha"
	fi
done < $1

