#!/bin/bash
echo -e "Introduce una cadena de texto:"
read cadena

num_caracteres=${#cadena}
echo -e "El número total de caracteres que hay en la cadena que has introducido es de: $num_caracteres"

num_palabras=$(echo "$cadena" | wc -w)
echo -e "La cadena tiene $num_palabras palabras"

echo -e "Introduce una letra para buscar en la cadena:"
read letra

while [[ ${#letra} -ne 1 ]]; do
    echo "Debes introducir solo una letra"
    read letra
done

num_letras=$(echo "$cadena" | grep -o -i "$letra" | wc -l)
echo -e "La letra '$letra' aparece $num_letras veces en la cadena"

