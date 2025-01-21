#!/bin/bash
while [[ true ]]; do
echo -e "Introduce una opción (1, 2, 3 o 4):"
read opcion
while [[ $opcion -le 0 || $opcion -gt 4 ]]; do
	echo "Ese no es un número de opción permitido"
	echo "Introduce un número de opción válido (1,2,3 o 4)"
	read opcion
done
case $opcion in
	1)
		suma=0
		for ((i=1;i<=100; i++)); do
			suma=$((suma+i))
		done
		echo -e "La suma de todos los números del 1 al 100 es: $suma\n"
		;;
	2)
		echo -e "Introduce un número para mostrar su tabla de multiplicar\n"
		read num
		echo ""

		for i in {1..10}; do
       			let multiplicacion=$num*$i
        		echo "$num x $i = $multiplicacion"
		done
		;;
	3)
		echo "Introduce un archivo"
                read archivo
                if [[ -e "$archivo" ]]; then
                        echo -e "Se ha encontrado el archivo $archivo\n"
			if [[ -r "$archivo" ]]; then
				echo -e "El archivo tiene permisos de lectura\n"
			else
				echo -e "El archivo no tiene permisos de lectura\n"
			fi
			if [[ -w "$archivo" ]]; then
				echo -e "El archivo tiene permisos de escritura\n"
			else
				echo -e "El archivo no tiene permisos de escritura\n"
			fi
                else
                        echo -e "No se ha encontrado el archivo $archivo en el directorio actual\n"
                fi
                ;;
	4)	echo -e "\nHasta luego, gracias"
		exit
		;;
esac
done

