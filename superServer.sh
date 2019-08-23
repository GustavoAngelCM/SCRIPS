#! /bin/bash

while [ "$yn" != "Yes" ]; do

   clear

   echo -e "\e[32mSelecciona una opción\e[0m"

   echo "1) Visualizar dispositivos conectados"

   echo "2) Visualizar puertos abiertos"

   echo "3) Asiganr IP estatico"

   echo "4) Configurar servidor DHCP"

   echo "5) Configurar servidor DNS"

   echo "6) Configurar servidor PROXY"

   echo "7) Configuara servidor Email"

   echo -e "\e[31m8) Salir\e[0m"

   read case;


   case $case in

      1)
         clear
         nmap -sP 192.168.0.0/24

         echo -e "\n\e[31mDesea salir? [Yes]/[Presiona cualquier tecla]\e[0m\n"

         read yn;;

      2)
         clear
         netstat -l
         echo -e "\n\e[31mDesea salir? [Yes]/[Presiona cualquier tecla]\e[0m\n"

         read yn;;

      3)
         clear
         echo "Ingrese la tarjeta de red"
         read enp
         echo "Ingrese la direccion IP que desea asignar."
         read ip
         echo "Ingrese la mascara de red"
         read mask
         sudo ifconfig $enp $ip netmask $mask
         echo "ejecutando...";;

      4) echo "Comando en ejecucion permitir? (Yes | No)"

         read yn
         echo "ejecutando...";;

      5) echo "Comando en ejecucion permitir? (Yes | No)"

         read yn
         echo "ejecutando...";;

      6) echo "Comando en ejecucion permitir? (Yes | No)"

         read yn
         echo "ejecutando...";;
      7) echo "Comando en ejecucion, permitir? (Yes | No)"

         read yn;;
      8) exit

   esac
done
