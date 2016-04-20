:::::::::::::::::::::::::::::::::::::::::
:: Privilegios de Administrador
:::::::::::::::::::::::::::::::::::::::::
@echo off
CLS 
ECHO.
ECHO =============================
ECHO Running Admin shell
ECHO =============================

:checkPrivileges 
NET FILE 1>NUL 2>NUL
if '%errorlevel%' == '0' ( goto gotPrivileges ) else ( goto getPrivileges ) 

:getPrivileges 
if '%1'=='ELEV' (shift & goto gotPrivileges)  
ECHO. 
ECHO **************************************
ECHO Invoking UAC for Privilege Escalation 
ECHO **************************************

setlocal DisableDelayedExpansion
set "batchPath=%~0"
setlocal EnableDelayedExpansion
ECHO Set UAC = CreateObject^("Shell.Application"^) > "%temp%\OEgetPrivileges.vbs" 
ECHO UAC.ShellExecute "!batchPath!", "ELEV", "", "runas", 1 >> "%temp%\OEgetPrivileges.vbs" 
"%temp%\OEgetPrivileges.vbs" 
exit /B 

:gotPrivileges 
::::::::::::::::::::::::::::
::START
::::::::::::::::::::::::::::
setlocal & pushd .

@echo off
title Reparador Virus lnk
color 0A
cls
:Menu
@echo Introduzca la letra de su etiqueta en mayusculas. 
set /p var= 
echo Accediendo al disco %var%:
%var%:
@echo ----------------------------------------------
@echo ---- REPARACION DE FICHEROS ----
@echo ----------------------------------------------
@echo Cambiando Atributo de Carpetas
Attrib /d /s -r -h -s *.* 
@echo ----------------------------------------------
@echo Eliminado Accesos Directos
if exist *.lnk del *.lnk 
@echo ----------------------------------------------
@echo Eliminado Autorun
if exist autorun.inf del autorun.inf 
@echo ----------------------------------------------
@echo Operacion OK...
@echo Puedes usar tu dispositivo tranquilamente
@echo ----------------------------------------------
@echo ----------------------------------------------
@echo by Arturo Mantinetti
@echo ----------------------------------------------
@echo ----------------------------------------------
@echo Adios
pause
