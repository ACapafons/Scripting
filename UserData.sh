#!/bin/bash
#Agustín Capafons

####


  user=$1


# Verificar si el parametro está vacio y nos preguntará por el usuario.

    if [ -z $user ]

    then

            read -p "Indique el nombre de usuario: " user

    fi



#  Nos da la informacion del usuario existente.



    if grep -q  "^$user:" /etc/passwd

    then

            echo "Información del usuario $1"

            echo

            echo "UID: $(grep -w ^$user /etc/passwd | cut -d: -f3)"

            echo "GUID: $(grep -w ^$user /etc/passwd | cut -d: -f4)"

            echo "Home: $(grep -w ^$user /etc/passwd | cut -d: -f6)"

            echo "Shell: $(grep -w ^$user /etc/passwd | cut -d: -f7)" 

# Verifique si el usuario no existe o el campo esta vacío. 

    elif [ $? -ne 0 ]

    then

        echo "Dicho usuario NO existe o el campo se encuentra vacío."

        fi
