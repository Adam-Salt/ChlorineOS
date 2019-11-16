@echo off
title Chlorine - v1.3.1
color 0b

:start
cls
echo ===========================
echo Chlorine
echo ===========================
echo Made by: Adam Salt
echo ===========================
echo.
pause
goto menu

:menu
cls

echo.
echo.=================================================================================
echo Hello, %USERNAME%,
time /t
date /t
echo.=================================================================================
echo.
echo Input application number
echo.==========================
echo 1. Application settings
echo 2. Power options  
echo 3. Computer information 
echo 4. Calculator
echo 5. Web-browser
echo.

set /p input=

if %input% == 1 goto info
if %input% == 2 goto power
if %input% == 3 goto systeminformation
if %input% == 4 goto calculator
if %input% == 5 goto browser

REM // Application Settings

:info
cls

echo.==========================
echo Chlorine:
echo.==========================
echo Details:
echo.
echo Version = 1.3
echo.     
echo.===========================
echo Created by: Adam Salt
echo.
echo.===========================
echo.
echo.===========================
echo Actions:
echo.
echo.===========================
echo 1. Menu
echo.===========================
echo 2. Change application colors
echo.===========================
echo 3. Application update
echo.===========================
echo.

set /p input=

if %input% == 1 goto menu
if %input% == 2 goto colorpick
if %input% == 3 goto updater


REM // Run the updater + get latest version

:updater
cls
echo.
echo Getting Latest Version
curl -o Chlorine.bat "https://raw.githubusercontent.com/Lightning3240/ChlorineOS/master/Chlorine.bat?_=%random%" -L
EXIT

REM // Power Options
:power
cls 
echo. 
echo.===========================
echo Power Options:
echo.===========================
echo.
echo.===========================
echo 1. Lock
echo.===========================
echo.
echo.===========================
echo 2. Close Chlorine
echo.===========================
echo.

set /p input=

if %input% == 1 goto start
if %input% == 2 EXIT

REM // Color Picker


:colorpick
cls

echo. 
echo.===========================
echo System colors:
echo.===========================
echo.
echo.===========================
echo 1. Red
echo.===========================
echo. 
echo.===========================
echo 2. Yellow
echo.===========================
echo.
echo.===========================
echo 3. Green
echo.===========================
echo.
echo.===========================
echo 4. Blue
echo.===========================
echo. 
echo.===========================
echo 5. Purple
echo.===========================
echo.
echo.===========================
echo 6. White
echo.===========================
echo. 
echo.===========================
echo 7. Cancel
echo.===========================
echo.

set /p input=

if %input% == 1 goto red
if %input% == 2 goto yellow
if %input% == 3 goto green
if %input% == 4 goto blue
if %input% == 5 goto purple
if %input% == 6 goto white
if %input% == 7 goto menu

:red 
color 0c
goto menu 

:yellow 
color 0e
goto menu 

:green 
color 0a
goto menu

:blue 
color 0b
goto menu

:purple
color 0d
goto menu

:white 
color 0f
goto menu

REM // Clock application

:clock
cls
echo.
echo.===========================
time /t
echo.===========================
date /t
echo.===========================
echo.
echo.===========================
echo 1. Menu
echo.===========================

set /p input=

if %input% == 1 goto menu

REM // Grabs system information, afterwards it goes to menu.

:systeminformation
cls
systeminfo 
echo.
pause
goto menu

REM // Calculator Application

:calculator
cls
echo.
echo.
echo What type calculation are you doing?
echo.
echo.===========================
echo 1. Addition
echo.===========================
echo.
echo.===========================
echo 2. Subtraction
echo.===========================
echo.
echo.===========================
echo 3. Divison
echo.===========================
echo.
echo.===========================
echo 4. Multipication
echo.===========================
echo.
echo.===========================
echo 5. Menu
echo.===========================
echo.
set /p do=
if %do%== 1 goto add
if %do%== 2 goto sub
if %do%== 3 goto div
if %do%== 4 goto mul
if %do%== 5 goto menu
echo.
cls
echo Invalid value = %do%
echo.
pause
cls
goto calculator

:add
cls
echo ADDITON
echo.
set /p no1="num1. "
echo       +
set /p no2="num2. "
set /a sum=no1+no2
echo ------------
echo %sum%
echo.
pause
cls
goto calculator


:sub
cls
echo SUBTACTION
echo.
set /p no1="num1. "
echo       -
set /p no2="num2. "
set /a sum=no1-no2
echo ------------
echo %sum%
echo.
pause
cls
goto calculator


:div
cls
echo DIVISON
echo.
set /p no1="num1. "
echo       /
set /p no2="num2. "
set /a sum=no1/no2
echo ------------
echo %sum%
echo.
pause
cls
goto calculator


:mul
cls
echo MULTIPLICATION
echo.
set /p no1="num1. "
echo       *
set /p no2="num2. "
set /a sum=no1*no2
echo ------------
echo %sum%
echo.
pause
cls
goto calculator

REM // Internet Browser

:browser
cls
echo.
echo ======================================= 
echo World wide web 
echo =======================================
echo Which browser do you want?
echo =======================================
echo 1. Chrome
echo 2. Firefox
echo 3. Microsoft Edge 
echo 4. Menu
echo =======================================

set /p input=

if %input% == 1 goto chrome
if %input% == 2 goto firefox
if %input% == 3 goto edge
if %input% == 4 goto menu

:chrome
cls
echo.
echo =======================================
echo Chrome Browser
echo =======================================
set /p url=Url:
start chrome %url%
goto menu

:firefox
cls
echo.
echo =======================================
echo Firefox Browser
echo =======================================
set /p url=Url:
start firefox.exe %url%
goto menu

:edge
cls
echo.
echo =======================================
echo Microsoft Edge Browser
echo =======================================
set /p url=Url:
start microsoft-edge:%url%
goto menu