echo "Buen día, $USER"
echo "=-=-=-=-=-=-=-=-=-=-=-=-=-="
OPCION=0
while [ "$OPCION" -ne "3" ]
do
	echo "MENU"
	echo "=-=-=-=-=-=-=-=-=-=-=-=-=-="
	echo "1. Mostrar la hora en formato de 12 horas (AM/PM)"
	echo "2. Mostrar el clima de hoy de Bahía blanca"
	echo "3. Salir"
	echo "=-=-=-=-=-=-=-=-=-=-=-=-=-="
	echo "Opcion:"
	read OPCION
	case $OPCION in
		1)
			echo "=-=-=-=-=-=-=-=-=-=-=-=-=-="
			echo "Son la/s"
			date +"%I:%M %p"
			echo "=-=-=-=-=-=-=-=-=-=-=-=-=-="
			;;
		2)
			echo "=-=-=-=-=-=-=-=-=-=-=-=-=-="
			curl wttr.in/Bahia-Blanca?0
			echo "=-=-=-=-=-=-=-=-=-=-=-=-=-="
			;;
	esac
done


echo "Adios, $USER."	
sleep 3;
