#!/bin/bash

#
# WhatsApp X Sender 
#
# @author:  Pablo Bozzolo
# @licence: GNU	
#
# TODO: 
#   
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

# Typeo tel
xdotool type "$tel"


# Me posiciono sobre el contacto seleccionado
xdotool mousemove $x2 $y2 sleep 1 click 1 && \

# Typeo mensaje
xdotool type "$msg"

# Envio el mensaje 
xdotool keydown KP_Enter keyup KP_Enter keydown Escape keydown Escape