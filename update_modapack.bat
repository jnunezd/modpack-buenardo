@echo off
echo Eliminando configuraciones y mods antiguos antiguas...
rmdir /s /q mods
rmdir /s /q config

echo Descargando la última versión del modpack...
curl -L -o modpack.zip https://github.com/jnunezd/modpack-buenardo/archive/refs/heads/master.zip

echo Extrayendo archivos...
tar -xf modpack.zip --strip-components=1

echo Eliminando archivo temporal...
del modpack.zip

echo Actualizacion completa
pause