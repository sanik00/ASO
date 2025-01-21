#!/bin/bash
num=$((RANDOM%50+1))
echo -e "Adivina en qué número estoy pensando entre el 1 y 50"
while true; do
read -p "Introduce tu adivinanza: " numero

if [[ $numero -lt $num ]]; then
	echo -e "El número es mayor"
elif [[ $numero -gt $num ]]; then
        echo -e "El número es menor"
else
        echo -e "¡Felicidades! Has acertado"
        exit
fi
done

