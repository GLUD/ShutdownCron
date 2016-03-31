#!/bin/bash
#Compruebe con el comando
# $ locate poweroff
#Que la aplicación poweroff se encuenta en /sbin/poweroff
#además que el .Xauthority sea de un usuario que tenga sesión gráfica
#por último que la pantalla predeterminada sea :0 con el comando who
export XAUTHORITY=/home/glud/.Xauthority
export DISPLAY=:0
for i in `seq 1 5`; do
let min=6-$i
xmessage -center "Guarde sus trabajos, el computador se apagara en $min min" &
echo "Guarde sus trabajos"
sleep 60
done
/sbin/poweroff
