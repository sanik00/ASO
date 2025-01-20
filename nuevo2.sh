#!/bin/bash

nombres=("Antonio" "Juan" "Paco" "Adrian" "Juan Antonio")
echo "Todo el array: ${nombres[@]}"
grupo1=(${nombres[@]:1:2})
echo "${grupo1[@]}"
