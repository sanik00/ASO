#!/bin/bash
while [[ $operacion != "salir" ]]; do
echo -e "Dame el primer número"
read num1
echo -e "Dame el segundo número"
read num2

echo -e "¿Qué operación deseas realizar?"
read operacion 
if [ $operacion == "suma" ]; then
	let suma=$num1+$num2
	echo -e "La suma es $suma\n"
elif [ $operacion == "resta" ]; then
	let resta=$num1-$num2
	echo -e "La resta es $resta\n"
elif [ $operacion == "multiplicacion" ]; then
	let multiplicacion=$num1*$num2
	echo -e "La multiplicación es $multiplicacion\n"
elif [ $operacion == "division" ]; then
	let division=$num1/$num2
	if [[ "$num2" == 0 ]]; then
	echo -e "No se puede dividir entre 0"
	else
		echo -e "La división es $division\n"
	fi
elif [ $operacion == "modulo" ]; then
	let modulo=$num1%$num2
	echo -e "El módulo es $modulo\n"
elif [ $operacion == "potencia" ]; then
	let potencia=$num1**$num2
	echo -e "La potencia es $potencia\n"
elif [ $operacion == "salir" ]; then
	echo -e "Hasta luego!\n"
else
	echo -e "No has introducido una operación válida, las opciones son; suma, resta, multiplicacion, division, modulo, potencia o salir\n"
fi
done
