#!/bin/bash
echo -e "Dime un número:"
read num
if (( num > 10 )); then
	echo -e "\nEl número es mayor que 10"
else
	echo -e "\nEl número no es mayor que 10\n"
fi


