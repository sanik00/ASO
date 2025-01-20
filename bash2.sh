#!/bin/bash
while [[ $opcion != 4 ]]; do
echo -e "Introduce una opción (1, 2, 3 o 4):"
for opcion in {!= 1..4} ; do
	read opcion
	echo "No has introducido una opción válida, vuelve a intentarlo"
done
case $opcion in
	1)
		for num in {1..100}; do
			echo "Número: $num"
		done
		;;
	2)
		echo "Introduce un número para mostrar su tabla de multiplicar"
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
                        echo "Se ha encontrado el archivo $archivo"
			if [[ -r "$archivo" ]]; then
				echo "El archivo tiene permisos de lectura"
			else
				echo "El archivo no tiene permisos de lectura"
			fi
			if [[ -w "$archivo" ]]; then
				echo "El archivo tiene permisos de escritura"
			else
				echo "El archivo no tiene permisos de escritura"
			fi
                else
                        echo "No se ha encontrado el archivo $archivo en el directorio actual"
                fi
                ;;
	4)
		exit
		;;
esac
done

