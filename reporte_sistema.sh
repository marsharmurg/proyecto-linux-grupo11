#!/bin/bash

echo "📅 FECHA Y HORA DEL SISTEMA"
date
echo

echo "👥 USUARIOS CONECTADOS AL SISTEMA"
who
echo

echo "📦 ESTADO DEL CONTENEDOR 'servidor-grupo11'"
docker ps -a | grep servidor-grupo11
echo

echo "🔍 DETALLES DE LA IMAGEN USADA"
docker inspect servidor-grupo11 --format='Imagen: {{.Config.Image}} | Estado: {{.State.Status}} | Puertos: {{range $p, $conf := .NetworkSettings.Ports}}{{$p}} -> {{(index $conf 0).HostPort}}{{end}}'
echo

echo "📁 ARCHIVOS EN /usr/share/nginx/html DENTRO DEL CONTENEDOR"
docker exec servidor-grupo11 ls -lh /usr/share/nginx/html
echo

echo "👥 USUARIOS INTERNOS DEL CONTENEDOR"
docker exec servidor-grupo11 cat /etc/passwd | grep -E 'adminsys|tecnico|visitante'
echo

echo "📝 LOGS RECIENTES DEL CONTENEDOR"
docker logs servidor-grupo11 --tail 20
echo

echo "📊 USO DE RECURSOS DEL CONTENEDOR"
docker stats servidor-grupo11 --no-stream
echo
