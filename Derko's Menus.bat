@echo off
color F
Title Introduce la clave
:question
set /a tries=5
:top
echo. 
:::  _____               _          _       __  __                     
::: |  __ \             | |        ( )     |  \/  |                    
::: | |  | |  ___  _ __ | | __ ___ |/ ___  | \  / |  ___  _ __   _   _ 
::: | |  | | / _ \| '__|| |/ // _ \  / __| | |\/| | / _ \| '_ \ | | | |
::: | |__| ||  __/| |   |   <| (_) | \__ \ | |  | ||  __/| | | || |_| |
::: |_____/  \___||_|   |_|\_\\___/  |___/ |_|  |_| \___||_| |_| \__,_|

for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
echo.
echo Introduce la clave
echo.
echo ----------------------------------------------
echo %tries% Intentos restantes
echo ----------------------------------------------

set /p pass=
if %pass%==1805 goto correct
set /a tries=%tries -1
if %tries%==0 goto penalty

cls
goto top

:penalty
echo Demasiados intentos fallidos, cerrando programa
ping localhost -n 3 >nul
exit

:Start
Title Derko's Menu
cls
echo  =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
echo  -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo                                  Bienvenido %USERNAME%
echo.
echo              [ALT] + [ENTER] Activa o desactiva la pantalla completa
echo  -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo  =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
echo.
echo.
echo                         1 - Apagar
echo                         2 - Cuenta atras de 5 minutos para apagar
echo                         3 - Cancelar apagado
echo                         4 - Calculadora
echo                         5 - Matrix
echo                         6 - Navigators
echo                         7 - Games
echo                         8 - Utilities




set Choice=
set /p Choice=""

if '%Choice%'=='1' goto insta
if '%Choice%'=='2' goto fivemin
if '%Choice%'=='3' goto abort
if '%Choice%'=='4' goto batcalc
if '%Choice%'=='5' goto matrix
if '%Choice%'=='6' goto navigators
if '%Choice%'=='7' goto games
if '%Choice%'=='8' goto util

cls
echo '%Choice%' No valido
ping localhost -n 2 >Nul
echo Intenta de nuevo
ping localhost -n 2 >nul
cls
goto Start



:insta
cls
echo De verdad quieres apagar?
pause
shutdown -s -t 0
goto exit

:navigators
cls
Title Derko's Navigators Menu
cls
echo  =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
echo  -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo                                 Bienvenido %USERNAME%
echo.
echo              [ALT] + [ENTER] Activa o desactiva la pantalla completa
echo  -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo  =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
echo.
echo.
echo                         1 - Opera
echo                         2 - Chrome
echo                         3 - Edge
echo                         0 - Back

set Var=
set /p Var=""

if '%Var%'=='1' goto opera
if '%Var%'=='2' goto chrome
if '%Var%'=='3' goto edge
if '%Choice%'=='0' goto back

cls
echo '%Var%' No valido, intenta de nuevo
ping localhost -n 2 >Nul
cls
goto Start

:games
cls
Title Derko's Games Menu
cls
echo  =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
echo  -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo                                 Bienvenido %USERNAME%
echo.
echo              [ALT] + [ENTER] Activa o desactiva la pantalla completa
echo  -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo  =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
echo.
echo.
echo                          1 - Steam
echo                          2 - Valorant
echo                          3 - Fivem
echo                          4 - Minecraft
echo                          0 - Back

set Vari=
set /p Vari=""

if '%Vari%'=='1' goto steam
if '%Vari%'=='2' goto valorant
if '%Vari%'=='3' goto fivem
if '%Vari%'=='4' goto minecraft
if '%Choice%'=='0' goto back
cls
echo '%Vari%' No valido, intenta de nuevo
ping localhost -n 2 >Nul
cls
goto Start

:steam
cd "C:\Program Files (x86)\Steam"
start Steam.exe
goto Start

:valorant
cd "C:\Riot Games\Riot Client"
start RiotClientServices.exe --launch-product=valorant --launch-patchline=live
goto Start

:fivem
cd "C:\Users\alexm\AppData\Local\FiveM"
start Fivem.exe
goto Start

:minecraft
cd "C:\Program Files (x86)\Minecraft Launcher"
Start MinecraftLauncher.exe
goto Start

:abort
shutdown -a 
goto Start

:fivemin
shutdown -s -f -t 300 -c "Tienes 5 minutos antes de apagar"
goto Start

:util
cls
Title Derko's Utils Menu
cls
echo  =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
echo  -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo                                Bienvenido %USERNAME%
echo.
echo              [ALT] + [ENTER] Activa o desactiva la pantalla completa
echo  -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
echo  =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
echo.
echo.
echo                          1 - Paint
echo                          2 - Audacity
echo                          3 - Gimp
echo                          4 - Adm. Tareas
echo                          5 - Recortes
echo                          0 - Back

set Varo=
set /p Varo=""

if '%Varo%'=='1' goto paint
if '%Varo%'=='2' goto audacity
if '%Varo%'=='3' goto gimp
if '%Varo%'=='4' goto recortes
if '%Varo%'=='5' goto admtar
if '%Choice%'=='0' goto back
cls
echo '%Varo%' No valido
ping localhost -n 2 >Nul
echo Intenta de nuevo
ping localhost -n 2 >nul
cls
goto Start

:paint
cd "C:\WINDOWS\system32"
start mspaint.exe
goto Start

:audacity
cd "C:\Program Files (x86)\Audacity"
start audacity.exe
goto Start

:gimp
cd "C:\Program Files\GIMP 2\bin"
start gimp-2.10.exe
goto Start

:recortes
cd "C:\WINDOWS\system32"
start SnippingTool.exe
goto Start

:admtar
cd "C:\WINDOWS\system32"
start Taskmgr.exe
goto Start


:batcalc
cls
:begin
echo --------------------------------------------------------------
echo                          Calculadora
echo --------------------------------------------------------------
echo.
set /p sum=
set /a ans=%sum%
echo.
echo = %ans%
echo --------------------------------------------------------------
pause
cls
echo Solucion anterior %ans%
goto begin 
 
:matrix
color 2
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
goto matrix

:correct
cls
echo Clave correcta %username%
ping localhost -n 3 >nul
goto Start                                                                                                                                                                                               

:chrome
echo Iniciando Chrome
ping localhost -n 3 >nul
cd "C:\Program Files\Google\Chrome\Application"
start chrome.exe
goto Start

:opera
echo Iniciando Opera
ping localhost -n 3 >nul
cd "%userprofile%\AppData\Local\Programs\Opera GX"
start launcher.exe
goto Start

:edge
echo Iniciando Edge
ping localhost -n 3 >nul
cd "C:\Program Files (x86)\Microsoft\Edge\Application"
start msedge.exe
goto Start

:back
cls
goto Start
