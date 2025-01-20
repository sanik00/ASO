#!/bin/bash
palabra="hola"
read palabra
echo "palabra"
while [[ "$palabra" != "salir" ]]; do
	echo "Escribe una palabra:"
	read palabra
	echo "$palabra"
done
