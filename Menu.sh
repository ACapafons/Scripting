#!/bin/bash 
#Agustín Capafons

opc=0

# En caso de estar instalada nos mostrará un mesaje y si no está nos mostrará un mensaje sobre desinstalarlo, tiene un bucle que su funcion es volver al menú al seleccionar la opción de salir.




while [ $opc -ne 4 ] 

do

    if which cowsay > /dev/null 

        then

            echo "Desinstalar el Cowsay."

        else

            echo "Instalar el Cowsay."

    fi



    if which sl > /dev/null 

            then

                echo "Desinstalar el sl."

            else

                echo "Instalar el sl."

        fi



    if which ifconfig > /dev/null 

        then

            echo "Desinstalar el Net-Tools."

        else

            echo "Instalar el Net-Tools."

    fi



    echo "4.SALIR"

        read -p "Indique la opcion que desea ejecutar: " opc

            while [ -z $opc ]

            do

        read -p "Indique la opcion que desea ejecutar: " opc

        done




# Indicaremos la opción y  que se desinstale o instale la aplicación.


    case "$opc" 

    in

        1) echo  "Seleccionó la opción 1."

     if which cowsay > /dev/null

        then

        sudo apt remove -y cowsay

        else

        sudo apt install -y cowsay

    fi

    ;;

    2) echo  "Seleccionó la opción 2."

        if which sl > /dev/null

            then

            sudo apt remove -y sl

            else

            sudo apt install -y sl

        fi

        ;;

    3) echo  "Seleccionó la ópcion 3."

    if which ifconfig > /dev/null

        then

        sudo apt remove -y net-tools

        else

        sudo apt install -y net-tools

    fi

    ;;



    4) exit 1


    ;;

    esac

done
