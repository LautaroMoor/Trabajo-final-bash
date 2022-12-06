ALEATORIO=$(( $RANDOM % 50 + 1 ))
TEXTO="ESTE ES EL PROGRAMA ADIVINADOR"
echo $TEXTO
CONTADOR=0
for i in {1..10} 
do
	CONTADOR=$i
	echo "Inserte un numero:"
	read NUMERO
	if [ "$NUMERO" -lt "1" ] || [ "$NUMERO" -gt "50" ]; 
	then
		echo "Tienes que insertar un numero entre 1 y 50."
		CONTADOR=11
		break

	elif [ "$NUMERO" -lt "$ALEATORIO" ] 
	then
		echo "El numero random es mayor al que ingresaste. Vuelva a intentar."
	elif [ "$NUMERO" -gt "$ALEATORIO" ] 
	then
		echo "El numero random es menor al que ingresaste. Vuelva a intentar."
	else
		break
	fi
done
if [ "$CONTADOR" -le "5" ] 
then
	echo "BIEEEEN"
elif [ "$CONTADOR" -ge "6" ] && [ "$CONTADOR" -le "10" ]
then
	echo "BIEN, PERO NO TAAAAAN BIEN."
else
	echo "PERDISTE"
fi

sleep 3;