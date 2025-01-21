#!/bin/bash
echo -e "Introduce el parámetro a"
read a
echo -e "Introduce el parámetro b"
read b
echo -e "Introduce el parámetro n"
read n

re='^[0-9]+$'

while ! [[ "$a" =~ $re ]]; do
        echo -e "\nNo has introducido un valor permitido para el parámetro 'a'\n"
        echo -e "Saliendo del script...\n"
        exit
done

while ! [[ "$b" =~ $re ]]; do
        echo -e "\nNo has introducido un valor permitido para el parámetro 'b'\n"
        echo -e "Saliendo del script...\n"
        exit
done

while ! [[ "$n" =~ $re ]]; do
        echo -e "\nNo has introducido un valor permitido para el parámetro 'n'\n"
        echo -e "Saliendo del script...\n"
        exit
done

while [[ "$n" == 0 ]]; do
	echo -e "\nEl valor introducido para 'n' debe ser superior a 0, vuelve a introducirlo por favor\n"
	read n
done

echo ""

let producto=$a*$b

echo -e "El resultado de la multiplicación entre 'a' y 'b' es: $producto\n"

echo -e "Los números impares que hay desde 1 hasta 'n' ($n en este caso) son:\n"

contador=1
while [[ $contador -le $n ]]; do
        echo "$contador"
        ((contador+=2))
done

suma=0
for ((i=1;i<=$n; i+=2)); do
	suma=$((suma+i))
done

echo -e "\nY la suma de todos estos números impares es: $suma\n"

let resultado=$suma+$producto

echo -e "El resultado de la suma de los productos entre 'a', 'b' y cada número impar menor o igual a 'n' es: $producto + $suma = $resultado\n"

