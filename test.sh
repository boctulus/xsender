#!/bin/bash

msg='Hola mami, qué más? :) este es un mensaje automatizado de mi "WhatsApp X Sender" :P'

wm_id=0x06000085

# Me posiciono sobre la caja de búsqueda y le doy foco haciendo click
xdotool windowactivate "$wm_id" 

echo OK

# Escribo mensaje al destinatario
xdotool keydown type "$msg"

