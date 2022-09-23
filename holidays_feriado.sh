#!/bin/bash

###########
echo "-----------------------------" 
echo "variaveis data"
echo "-----------------------------"
dia=$(date +%d%m%Y)

###########
echo "-----------------------------" 
echo "Montando diretorios remotos"
echo "-----------------------------"


if [ $dia = "08092022" ]; then
  echo "Hoje é ferido, o processo não será executado!"
else
  echo "Processo executando no dia $dia"
fi

exit 0
