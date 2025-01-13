#!/bin/bash
echo -e "Hola\tmundo"
printf "%s %d\n" "Pepe" 1
: "
Hola
"
printf "%-10s | %-5s\n" "Nombre" "Edad"
printf "%-10s | %-5d\n" "Pepe" 12
printf "%-10s | %-5d\n" "Paco" 13

num1=1
declare -r num=2

echo $num1
echo $num
num1=2

echo $num1
num=1
echo $num
