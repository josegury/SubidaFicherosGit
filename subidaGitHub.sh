#!/bin/bash

echo "introduzca Usuario:"
read usuario
echo "Introduzca repositorio:"
read repo
echo "introduzca ruta de ficheros a subir:"
read path
echo "introduzca descripcion del commit"
read descript
cd path # me coloco en la ruta de los ficheros
git init
git remote add origin https://github.com/$usuario/$repo
git pull origin master
git add .
git commit . -m $descript
git push origin master

echo "subida realizada con exito"
echo "by josegury"
