#!/bin/bash

while true; do
    # Ejecuta el archivo run.sh en segundo plano
    ./run.sh &

    # Obtiene el ID del proceso en ejecución
    pid=$!

    # Espera a que el proceso se termine
    wait $pid

    # Muestra un mensaje de que el archivo run.sh se ha detenido
    echo "El archivo run.sh se ha detenido."

    # Realiza una cuenta atrás de 10 segundos
    for ((i=10; i>0; i--)); do
        echo "Reiniciando en $i segundos..."
        sleep 1
    done

    echo "Reiniciando el archivo run.sh"
done