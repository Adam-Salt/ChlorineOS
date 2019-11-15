@echo off
title ChlorineOS - v1.2
color 0b

REM gets latest version
ECHO Getting Latest Version
CURL -o ChlorineOS.bat "https://raw.githubusercontent.com/Lightning3240/ChlorineOS/master/ChlorineOS.bat?_=%random%" -L
echo.
pause
goto start

:start
cls
goto lock

:lock
cls
echo ===========================
echo ChlorineOS
echo ===========================
echo Made by: Adam Salt
echo ===========================
echo.
pause
goto menu

:menu
cls

echo.
echo.===========================
echo Hello, %USERNAME%
echo.===========================
echo.
echo Input application number
echo.
echo =======================
echo 1. System Settings
echo =======================
echo.
echo =======================
echo 2. Power Options
echo =======================
echo.
echo =======================
echo 3. Clock
echo =======================
echo.
echo =======================
echo 4. Calculator
echo =======================
echo.
echo =======================
echo 5. Games
echo =======================
echo.


set /p input=
if %input% == 1 goto info
if %input% == 2 goto power
if %input% == 3 goto clock
if %input% == 4 goto calculator
if %input% == 5 goto gamefolder

REM // System Settings
:info
cls

echo.==========================
echo ChlorineOS:
echo.==========================
echo Details:
echo.
echo Version = 1.2.1
echo.     
echo.===========================
echo Created by: Adam Salt
echo.
echo Train game by: u/kyja012
echo.===========================
echo.
echo.===========================
echo Actions:
echo.
echo.===========================
echo 1. Menu
echo.===========================
echo 2. Change system colors
echo.===========================
echo.
set /p input=

if %input% == 1 goto menu
if %input% == 2 goto colorpick
pause

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
echo 2. Turn off HexinOS
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

REM // Game folder

:gamefolder
cls
echo.
echo =======================================
echo 1. Train Driver
echo 2. Menu
echo =======================================

set /p input=

if %input% == 1 goto train
if %input% == 2 goto menu

REM // Train game


:train
--10 frames per second
set w=0
set pa=15
set su=30
set fu=120
set hs=0
goto 1
:S1
set w=0
goto 1
:1
if %w% equ 25 goto 3
if %w% equ 5 goto 4
if %w% equ 15 goto 4
if %w% equ 25 goto 4
if %su% LSS 0 goto 6
if %fu% LSS 0 goto 9
if %pa% gtr 50 goto 7
if %su% gtr 60 goto 8
if %fu% gtr 150 goto 10
goto 1.5
:1.5
cls
echo Passengers: %pa%    Fuel: %fu% gal.    Supplies: %su%
echo.
echo \          /\          /\          /\          /\          /\           /\
echo  \        /  \        /  \        /  \        /  \        /  \         /  \
echo   \      /    \      /    \      /    \      /    \      /    \       /    \
echo ___\____/____  \    /      \____/_     \    /      \    /      \     /      \
echo ^|_    ___   ^|   \  /        \    /      \  /        \  /        \   /        \
echo   ^|   ^| ^|   ^|    \/          ^|  ^|        \/          \/          \ /          \
echo   ^|   ^| ^|   ^|   _/           ^|  ^|        /           /            /            /
echo   ^|   ^|_^|    \_/__\_____/\__/    \____  /           /            /            /
echo   ^|                                   \/           /            /            /
echo   ^|   _____                           ^|           /            /            /
echo   ^|  // ^| \\    ______                ^|^|         /            /            /
echo __^| //__^|__\\  // ^|^| \\  ____  ____   ^|         /            /            /
echo --^|_^|\  ^|  /^|__^|^|----^|^|_//\/\\//\/\\__/        /            /            /
echo       \_^|_/     \_^|^|_/   \/\/  \/\/           /            /            /      
echo --[]------[]------[]------[]------[]------[]------[]------[]------[]------[]----
ping localhost -n 1 >nul
goto 2
:2
cls
echo Passengers: %pa%    Fuel: %fu% gal.    Supplies: %su%
echo.
echo     /\          /\          /\          /\          /\           /\          /\
echo    /  \        /  \        /  \        /  \        /  \         /  \        /  
echo   /    \      /    \      /    \      /    \      /    \       /    \      /
echo _/______\____/      \    /  ____\_   /      \    /      \     /      \    /
echo ^|_    ___   ^|        \  /   \    /  /        \  /        \   /        \  /
echo   ^|   ^| ^|   ^|         \/     ^|  ^| \/          \/          \ /          \/
echo   ^|   ^| ^|   ^|   __    /      ^|  ^| /           /            /           /
echo   ^|   ^|_^|    \_/__\__/__/\__/    \____       /            /           /
echo   ^|                                   \     /            /           /
echo   ^|   _____                           ^|    /            /           /
echo   ^|  //   \\    ______                ^|^|  /            /           /
echo __^| // \_/ \\  //\  /\\  ____  ____   ^|  /            /           /
echo --^|_^|\ / \ /^|__^|^| -- ^|^|_//__\\//__\\__/ /            /           /
echo       \___/     \/__\/   \__/  \__/    /            /           /
echo ------[]------[]------[]------[]------[]------[]------[]------[]------[]------[]
ping localhost -n 1 >nul
set /a w=%w%+1
goto 1
:3
set /a hs=%hs%+100
set /a pa=%pa%-5
if %pa% LSS 0 goto 5
cls
echo Passengers: %pa%    Fuel: %fu% gal.    Supplies: %su%
echo.
echo \          /\          /\          /\          /\          /\           /\
echo  \        /  \        /  \        /  \        /  \        /  \         /  \
echo   \      /    \      /    \      /    \      /    \      / ___\_______/____\____
echo ___\____/____  \    /      \____/_     \    /      \  __/_/ ^| ^| ^| ^| ^| ^| ^| ^| ^| ^|
echo ^|_    ___   ^|   \  /        \    /      \  /        \/_^|_^|_^|_^|_^|_^|_^|_^|_^|_^|_^|_^|_^|
echo   ^|   ^| ^|   ^|    \/          ^|  ^|        \/          \^|^|::::::::::::::::::::::::
echo   ^|   ^| ^|   ^|   _/           ^|  ^|        /           /^|^|   ___________
echo   ^|   ^|_^|    \_/__\_____/\__/    \____  /           / ^|^|   ^|    ^|    ^|    ______
echo   ^|                                   \/           /  ^|^|   ^|____^|____^|   /______
echo   ^|   _____                           ^|           /   ^|^|   ^|    ^|    ^|   ^|   ^|
echo   ^|  // ^| \\    ______                ^|^|         /    ^|^|___^|____^|____^|___^|   ^|
echo __^| //__^|__\\  // ^|^| \\  ____  ____   ^|         /     ^|^|: : : : : : : : :^|  [^|]
echo --^|_^|\  ^|  /^|__^|^|----^|^|_//\/\\//\/\\__/        /    __^|^|:_:_:_:_:_:_:_:_:^|___^|__
echo       \_^|_/     \_^|^|_/   \/\/  \/\/           /    /
echo --[]------[]------[]------[]------[]------[]------[]------[]------[]------[]----
echo.
echo.
echo     [1] Passengers
echo     [2] Fuel
echo     [3] Supplies
echo     [4] Skip
set /p c=
if %c% equ 1 goto pass
if %c% equ 3 goto supp
if %c% equ 2 goto fuel
if %c% equ 4 goto S1
goto 1
:fuel
set /a fu=%fu%+100
set w=0
goto 1
:supp
set /a su=%su%+30
set w=0
goto 1
:pass
set /a pa=%pa%+10
set w=0
goto 1
:4
set /a su=%su%+-5
set /a fu=%fu%+-20
goto 1.5
:5
cls
echo Passengers: %pa%    Fuel: %fu% gal.    Supplies: %su%
echo.
echo \          /\          /\          /\          /\          /\           /\
echo  \        /  \        /  \        /  \        /  \        /  \         /  \
echo   \      /    \      /    \      /    \      /    \      /    \       /    \
echo ___\____/____  \    /      \____/_     \    /      \    /      \     /      \
echo ^|_    ___   ^|   \  /        \    /      \  /        \  /        \   /        \
echo   ^|   ^| ^|   ^|    \/          ^|  ^|        \/          \/          \ /          \
echo   ^|   ^| ^|   ^|   _/           ^|  ^|        /           /            /            /
echo   ^|   ^|_^|    \_/__\_____/\__/    \____  /           /            /            /
echo   ^|                                   \/           /            /            /
echo   ^|   _____                           ^|           /            /            /
echo   ^|  // ^| \\    ______                ^|^|         /            /            /
echo __^| //__^|__\\  // ^|^| \\  ____  ____   ^|         /            /            /
echo --^|_^|\  ^|  /^|__^|^|----^|^|_//\/\\//\/\\__/        /            /            /
echo       \_^|_/     \_^|^|_/   \/\/  \/\/           /            /            /      
echo --[]------[]------[]------[]------[]------[]------[]------[]------[]------[]----
ping localhost -n 1 >nul
cls
echo Passengers: %pa%    Fuel: %fu% gal.    Supplies: %su%
echo.
echo     /\          /\          /\          /\          /\           /\          /\
echo    /  \        /  \        /  \        /  \        /  \         /  \        /  
echo   /    \      /    \      /    \      /    \      /    \       /    \      /
echo _/______\____/      \    /  ____\_   /      \    /      \     /      \    /
echo ^|_    ___   ^|        \  /   \    /  /        \  /        \   /        \  /
echo   ^|   ^| ^|   ^|         \/     ^|  ^| \/          \/          \ /          \/
echo   ^|   ^| ^|   ^|   __    /      ^|  ^| /           /            /           /
echo   ^|   ^|_^|    \_/__\__/__/\__/    \____       /            /           /
echo   ^|                                   \     /            /           /
echo   ^|   _____                           ^|    /            /           /
echo   ^|  //   \\    ______                ^|^|  /            /           /
echo __^| // \_/ \\  //\  /\\  ____  ____   ^|  /            /           /
echo --^|_^|\ / \ /^|__^|^| -- ^|^|_//__\\//__\\__/ /            /           /
echo       \___/     \/__\/   \__/  \__/    /            /           /
echo ------[]------[]------[]------[]------[]------[]------[]------[]------[]------[]
ping localhost -n 1 >nul
echo.
echo No one is riding your train. You go out of buisness.
echo.
goto End
:6
cls
echo Passengers: %pa%    Fuel: %fu% gal.    Supplies: %su%
echo.
echo \          /\          /\          /\          /\          /\           /\
echo  \        /  \        /  \        /  \        /  \        /  \         /  \
echo   \      /    \      /    \      /    \      /    \      /    \       /    \
echo ___\____/____  \    /      \____/_     \    /      \    /      \     /      \
echo ^|_    ___   ^|   \  /        \    /      \  /        \  /        \   /        \
echo   ^|   ^| ^|   ^|    \/          ^|  ^|        \/          \/          \ /          \
echo   ^|   ^| ^|   ^|   _/           ^|  ^|        /           /            /            /
echo   ^|   ^|_^|    \_/__\_____/\__/    \____  /           /            /            /
echo   ^|                                   \/           /            /            /
echo   ^|   _____                           ^|           /            /            /
echo   ^|  // ^| \\    ______                ^|^|         /            /            /
echo __^| //__^|__\\  // ^|^| \\  ____  ____   ^|         /            /            /
echo --^|_^|\  ^|  /^|__^|^|----^|^|_//\/\\//\/\\__/        /            /            /
echo       \_^|_/     \_^|^|_/   \/\/  \/\/           /            /            /      
echo --[]------[]------[]------[]------[]------[]------[]------[]------[]------[]----
ping localhost -n 1 >nul
cls
echo Passengers: %pa%    Fuel: %fu% gal.    Supplies: %su%
echo.
echo     /\          /\          /\          /\          /\           /\          /\
echo    /  \        /  \        /  \        /  \        /  \         /  \        /  
echo   /    \      /    \      /    \      /    \      /    \       /    \      /
echo _/______\____/      \    /  ____\_   /      \    /      \     /      \    /
echo ^|_    ___   ^|        \  /   \    /  /        \  /        \   /        \  /
echo   ^|   ^| ^|   ^|         \/     ^|  ^| \/          \/          \ /          \/
echo   ^|   ^| ^|   ^|   __    /      ^|  ^| /           /            /           /
echo   ^|   ^|_^|    \_/__\__/__/\__/    \____       /            /           /
echo   ^|                                   \     /            /           /
echo   ^|   _____                           ^|    /            /           /
echo   ^|  //   \\    ______                ^|^|  /            /           /
echo __^| // \_/ \\  //\  /\\  ____  ____   ^|  /            /           /
echo --^|_^|\ / \ /^|__^|^| -- ^|^|_//__\\//__\\__/ /            /           /
echo       \___/     \/__\/   \__/  \__/    /            /           /
echo ------[]------[]------[]------[]------[]------[]------[]------[]------[]------[]
ping localhost -n 1 >nul
echo.
echo You've run out of food. You and the passengers starve to death.
echo.
goto End
:End
echo Score: %hs%
echo.
echo Would you like to play again? [y,n]
set /p ed=
if %ed% equ y goto train
if %ed% equ n goto menu
Exit
:7
cls
echo Passengers: %pa%    Fuel: %fu% gal.    Supplies: %su%
echo.
echo \          /\          /\          /\          /\          /\           /\
echo  \        /  \        /  \        /  \        /  \        /  \         /  \
echo   \      /    \      /    \      /    \      /    \      /    \       /    \
echo ___\____/____  \    /      \____/_     \    /      \    /      \     /      \
echo ^|_    ___   ^|   \  /        \    /      \  /        \  /        \   /        \
echo   ^|   ^| ^|   ^|    \/          ^|  ^|        \/          \/          \ /          \
echo   ^|   ^| ^|   ^|   _/           ^|  ^|        /           /            /            /
echo   ^|   ^|_^|    \_/__\_____/\__/    \____  /           /            /            /
echo   ^|                                   \/           /            /            /
echo   ^|   _____                           ^|           /            /            /
echo   ^|  // ^| \\    ______                ^|^|         /            /            /
echo __^| //__^|__\\  // ^|^| \\  ____  ____   ^|         /            /            /
echo --^|_^|\  ^|  /^|__^|^|----^|^|_//\/\\//\/\\__/        /            /            /
echo       \_^|_/     \_^|^|_/   \/\/  \/\/           /            /            /      
echo --[]------[]------[]------[]------[]------[]------[]------[]------[]------[]----
ping localhost -n 1 >nul
cls
echo Passengers: %pa%    Fuel: %fu% gal.    Supplies: %su%
echo.
echo     /\          /\          /\          /\          /\           /\          /\
echo    /  \        /  \        /  \        /  \        /  \         /  \        /  
echo   /    \      /    \      /    \      /    \      /    \       /    \      /
echo _/______\____/      \    /  ____\_   /      \    /      \     /      \    /
echo ^|_    ___   ^|        \  /   \    /  /        \  /        \   /        \  /
echo   ^|   ^| ^|   ^|         \/     ^|  ^| \/          \/          \ /          \/
echo   ^|   ^| ^|   ^|   __    /      ^|  ^| /           /            /           /
echo   ^|   ^|_^|    \_/__\__/__/\__/    \____       /            /           /
echo   ^|                                   \     /            /           /
echo   ^|   _____                           ^|    /            /           /
echo   ^|  //   \\    ______                ^|^|  /            /           /
echo __^| // \_/ \\  //\  /\\  ____  ____   ^|  /            /           /
echo --^|_^|\ / \ /^|__^|^| -- ^|^|_//__\\//__\\__/ /            /           /
echo       \___/     \/__\/   \__/  \__/    /            /           /
echo ------[]------[]------[]------[]------[]------[]------[]------[]------[]------[]
ping localhost -n 1 >nul
echo.
echo With so many passengers on board. You run short on supplies/
echo Starvation is imminent.
echo.
goto End
:8
cls
echo Passengers: %pa%    Fuel: %fu% gal.    Supplies: %su%
echo.
echo \          /\          /\          /\          /\          /\           /\
echo  \        /  \        /  \        /  \        /  \        /  \         /  \
echo   \      /    \      /    \      /    \      /    \      /    \       /    \
echo ___\____/____  \    /      \____/_     \    /      \    /      \     /      \
echo ^|_    ___   ^|   \  /        \    /      \  /        \  /        \   /        \
echo   ^|   ^| ^|   ^|    \/          ^|  ^|        \/          \/          \ /          \
echo   ^|   ^| ^|   ^|   _/           ^|  ^|        /           /            /            /
echo   ^|   ^|_^|    \_/__\_____/\__/    \____  /           /            /            /
echo   ^|                                   \/           /            /            /
echo   ^|   _____                           ^|           /            /            /
echo   ^|  // ^| \\    ______                ^|^|         /            /            /
echo __^| //__^|__\\  // ^|^| \\  ____  ____   ^|         /            /            /
echo --^|_^|\  ^|  /^|__^|^|----^|^|_//\/\\//\/\\__/        /            /            /
echo       \_^|_/     \_^|^|_/   \/\/  \/\/           /            /            /      
echo --[]------[]------[]------[]------[]------[]------[]------[]------[]------[]----
ping localhost -n 1 >nul
cls
echo Passengers: %pa%    Fuel: %fu% gal.    Supplies: %su%
echo.
echo     /\          /\          /\          /\          /\           /\          /\
echo    /  \        /  \        /  \        /  \        /  \         /  \        /  
echo   /    \      /    \      /    \      /    \      /    \       /    \      /
echo _/______\____/      \    /  ____\_   /      \    /      \     /      \    /
echo ^|_    ___   ^|        \  /   \    /  /        \  /        \   /        \  /
echo   ^|   ^| ^|   ^|         \/     ^|  ^| \/          \/          \ /          \/
echo   ^|   ^| ^|   ^|   __    /      ^|  ^| /           /            /           /
echo   ^|   ^|_^|    \_/__\__/__/\__/    \____       /            /           /
echo   ^|                                   \     /            /           /
echo   ^|   _____                           ^|    /            /           /
echo   ^|  //   \\    ______                ^|^|  /            /           /
echo __^| // \_/ \\  //\  /\\  ____  ____   ^|  /            /           /
echo --^|_^|\ / \ /^|__^|^| -- ^|^|_//__\\//__\\__/ /            /           /
echo       \___/     \/__\/   \__/  \__/    /            /           /
echo ------[]------[]------[]------[]------[]------[]------[]------[]------[]------[]
ping localhost -n 1 >nul
echo.
echo Deciding to carry so many supplies was a risky move, bandits attack
echo and leave you stranded with nothing.
echo.
goto End
:9
cls
echo Passengers: %pa%    Fuel: %fu% gal.    Supplies: %su%
echo.
echo     /\          /\          /\          /\          /\           /\          /\
echo    /  \        /  \        /  \        /  \        /  \         /  \        /  
echo   /    \      /    \      /    \      /    \      /    \       /    \      /
echo _/______\____/      \    /  ____\_   /      \    /      \     /      \    /
echo ^|_    ___   ^|        \  /   \    /  /        \  /        \   /        \  /
echo   ^|   ^| ^|   ^|         \/     ^|  ^| \/          \/          \ /          \/
echo   ^|   ^| ^|   ^|   __    /      ^|  ^| /           /            /           /
echo   ^|   ^|_^|    \_/__\__/__/\__/    \____       /            /           /
echo   ^|                                   \     /            /           /
echo   ^|   _____                           ^|    /            /           /
echo   ^|  //   \\    ______                ^|^|  /            /           /
echo __^| // \_/ \\  //\  /\\  ____  ____   ^|  /            /           /
echo --^|_^|\ / \ /^|__^|^| -- ^|^|_//__\\//__\\__/ /            /           /
echo       \___/     \/__\/   \__/  \__/    /            /           /
echo ------[]------[]------[]------[]------[]------[]------[]------[]------[]------[]
ping localhost -n 1 >nul
echo.
echo You have run out of fuel in the middle of the wilderness,
echo you have enough supplies to survive, however, the wild
echo animals are attracted to the smell of food.
echo.
goto End
:10
cls
echo Passengers: %pa%    Fuel: %fu% gal.    Supplies: %su%
echo.
echo     /\          /\          /\          /\          /\           /\          /\
echo    /  \        /  \        /  \        /  \        /  \         /  \        /  
echo   /    \      /    \      /    \      /    \      /    \       /    \      /
echo _/______\____/      \    /  ____\_   /      \    /      \     /      \    /
echo ^|_    ___   ^|        \  /   \    /  /        \  /        \   /        \  /
echo   ^|   ^| ^|   ^|         \/     ^|  ^| \/          \/          \ /          \/
echo   ^|   ^| ^|   ^|   __    /      ^|  ^| /           /            /           /
echo   ^|   ^|_^|    \_/__\__/__/\__/    \____       /            /           /
echo   ^|                                   \     /            /           /
echo   ^|   _____                           ^|    /            /           /
echo   ^|  //   \\    ______                ^|^|  /            /           /
echo __^| // \_/ \\  //\  /\\  ____  ____   ^|  /            /           /
echo --^|_^|\ / \ /^|__^|^| -- ^|^|_//__\\//__\\__/ /            /           /
echo       \___/     \/__\/   \__/  \__/    /            /           /
echo ------[]------[]------[]------[]------[]------[]------[]------[]------[]------[]
ping localhost -n 1 >nul
echo.
echo Having all this extra fuel on board seemed wise in theroy.
echo But when excess fuel is exposed to heat, accidents happen.
echo.
goto End