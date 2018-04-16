#! /bin/bash

com[0]="make all -j2"
com[1]="make modules_install"
com[2]="make install"

i=0

while [ $i -lt 3 ]
do
	${com[i]}
	if [ $? -ne 0 ]
	then
		echo -e "Error in command \"${com[i]}\""
		exit
	fi
	let "i++"
done


