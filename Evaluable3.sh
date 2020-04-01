#!bin/bash
read -p "Introduce un dia :" dia
read -p "Introduce un mes :" mes

max='cat usuarios.txt | wc -l'
i=0
while [ $i -le $max ]; do
    usuario='cat usuarios.txt | head -$i | tail -1 | awk '{print $1}''
    meses='cat usuarios.txt | head -$i | tail -1 | awk '{print $3}''
    dias='cat usuarios.txt | head -$i | tail -1 | awk '{print $2}''
if [[$mes == $meses ]];then

    if [[ $dia == $dias ]];then
    log+="$usuario, "
    fi

fi
    i=$(($i+1))
    done

    if [[ -z $log ]]; then
        echo -e "No hay conexiones en esa fecha"
    else
        echo -e "el $dia de $mes se conectaron: \t$log"
    fi