# 1. Copiar el script en `/usr/bin` con el comando:
```
# cp shutdown.sh /usr/bin/shutdown.sh
```
# 2. Crear entrada en crontab:
Crontab es un servicio que permite cargar scripts u otras aplicaciones cada vez que se le indique, se quiere modificar el crontab del usuario root:
```
# crontab -e
```
## 2.1 Escribe las siguientes líneas entra en modo "insertar" presionando `i`:
```
00 23 * * * /usr/bin/shutdown.sh &>/tmp/myscript.log
```
En este caso las 00 minutos 23 horas son las 11:00PM
## 2.2 Escribir los cambios del archivo:
Presiona `:wq` para guardar los cambios.
# 3. Ver los cambios
Opcionalmente puedes ver los cambios con el comando
```
# crontab -l
```
