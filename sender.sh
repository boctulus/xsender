#!/bin/bash

#
# WhatsApp X Sender 
#
# @author:  Pablo Bozzolo
# @licence: GNU	
#
# TODO: 
#  
# - Dar soporte para signos de puntuación
# - Logear errores    
# - Intentar calcular las coordenadas en función del tamaño de la window 
#

# Datos
tel='+5492215431011'
msg='Hola papá, qué más? :) este es un mensaje automatizado :P'


# Coordenadas a ser determinadas
x='682'
y='349'

x2='712'
y2='610'

# Existe la ventana que busco?
wm=$(wmctrl -l | grep ' WhatsApp')

# Si falla .... chau
[[ $? -ne 0 ]] && exit 1

# Obtengo el id de la window
wm_id=`echo $wm | awk '{print $1};'` && \

# Me posiciono sobre la caja de búsqueda y le doy foco haciendo click
xdotool windowactivate "$wm_id" && \
xdotool mousemove $x $y sleep 1 click 1 && \


# Escribo el número de teléfono caracter a caracter
for i in $(seq 1 ${#tel}); do
  key="${tel:i-1:1}"
  xdotool keydown $key keyup $key
done


# Me posiciono sobre el contacto seleccionado
xdotool mousemove $x2 $y2 sleep 1 click 1 && \


# Escribo mensaje al destinatario
for i in $(seq 1 ${#msg}); do
  key="${msg:i-1:1}"
  [[ "$key" == ' ' ]] && key=space
  xdotool keydown $key keyup $key
done

# Envio el mensaje
xdotool keydown KP_Enter keyup KP_Enter