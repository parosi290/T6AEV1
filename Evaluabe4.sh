#!bin/bash
read -p "Introduce nombre de usuario: " usuario
max='cat usuarios.txt | wc -l'
i=0
while [$i -le $max ];do
usuarios='cat usuarios.txt | head -$i | tail -1 | awk '{print $1}''
meses='cat usuarios.txt | head -$i | tail -1 | awk '{print $3}''
dias='cat usuarios.txt | head -$i | tail -1 | awk '{print $2}''
if [[$usuario == $usuarios ]];then

for j in enero febrero marzo abril mayo junio julio agosto septiembre octubre noviembre dicienbre; do
    if [ $meses == $j ]&&[ $meses<$j ]; then

        echo $j
    fi
done
fi
    i=$(($i+1))
done

echo -e "La ultima conexion de $usuario fué:  \t$j"
