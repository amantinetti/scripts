
@echo off
title Virus Carpetas .lnk
color 0A
rem 0 negro fondo
rem A verde claro 2 verde oscuro letra
@echo ----------------------------------------------
@echo Recuperando Atributos de Carpetas
@echo ----------------------------------------------
@echo Mostrando Carpetas
ATTRIB -R -A -S -H /s /d
rem Attrib /d /s -r -h -s *.*
@echo ----------------------------------------------
@echo Eliminado Accesos Directos Infectados
if exist *.lnk del *.lnk
@echo ----------------------------------------------
@echo Proceso Terminado
@echo Los atributos de Carpeta han sido recuperados exitosamente XD
pause
exit

