#!/bin/bash
#Agustín Capafons

    let Sortnum=$(( $RANDOM %100 + 1))

    read -p " Introduce un numero entre 1 y 100: " num

    until [ $num -eq $Sortnum ]; do

    if [ $num -gt $Sortnum ]; then

        echo "El numero es menor."

    else

        echo "El numero es mayor."

    fi

    let cuenta=cuenta+1

    read -p " Introduce un numero entre 1 y 100 : " num


    done


    figlet GANASTE

        echo "Numero de intentos: $cuenta "

    exit
