# [ X Sender ] enviando mensajes de texto a WhatsApp desde la terminal 

He escrito un mini-script apoyándome principalmente en "xdotool" para demostrar su uso y porque un amigo me preguntó si sabía como resolver este requerimiento.

La idea de como resolverlo me la dió Leonardo y se basa en hacer un wrapper sobre "WhatsApp Web" y para esto "xdotool" es perfecto.

Ej de uso:

xsender '+5491114441088' 'Estimado xxx: muchas gracias por usar nuestro xsender :)'


### Importante:

El contacto tiene que estar en la agenda de tu teléfono.
Si apagas tu teléfono la sesión se te puede cerrar.
WhatsApp Web debe estar abierto o bien solo en un browser o bien la pestaña debe ser la activa.

Además... por el momento... toca calibrar (lo siento) las coordenadas para 

Coordenadas dentro del cuadro de búsqueda de contactos
Coordenadas dentro de la caja de texto donde se escriben los mensajes

Para hacer esto... 

sleep 5 && xdotool getmouselocation

<-- tienes 5 segundos para buscar las coordenadas y luego se imprimirán en la terminal