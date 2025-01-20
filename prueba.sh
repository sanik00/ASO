#!/bin/bash
echo "Introduce un número para mostrar su tabla de multiplicar"
read num
echo -e ""
for i in {1..10}; do
	let multiplicacion=$num*$i
	echo "$num x $i = $multiplicacion"
done
